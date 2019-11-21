const pg = require('pg');

const config = {
  max: 5, // max number of clients in connection pool
  idleTimeoutMillis: 30000, // time client can remain idle before being closed
  // setting all config login options to match setup in container environment
  user: 'graphquill',
  password: 'graphquill',
  database: 'graphquill',
  host: 'graphquill-postgres-db',
  port: 5432,
};

console.log('process.env is: ', process.env);

// initiate connection pool
// this will keep idle connections open for 30 seconds
// and set a max of 5 idle clients
// as specified by config options
const pool = new pg.Pool(config);

// the pool will emit an error with the client and the error message
// if a client hits an error while sitting idle in the pool
// this is rare but could happen if there is a network partition
// between the application and the database, if the database restarts, etc.
// just in case, we're handling that here
pool.on('error', (err) => {
  console.error('idle client error', err.message, err.stack);
});

// export the pool, it can be queried directly, or clients/connections can be "checked out",
// the connection/client can be queried, and then "released"
module.exports = pool;
