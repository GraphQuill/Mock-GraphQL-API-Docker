const mongoose = require('mongoose');
const mongoConnection = require('./dbConnection');

const reset = async () => {
  await mongoConnection();
  // await CartModel.deleteMany({}, (err) => {
  //   if (err) console.log('ERROR RESETTING MONGODB', err);
  //   else console.log('model emptied');
  // });
  // console.log(mongoose.modelNames());
  // await mongoose.deleteModel('Cart');
  // console.log(mongoose.modelNames());
  await mongoose.connection.dropCollection('carts', (err, result) => {
    if (err) return console.log(err);
    return console.log('collection deleted:', result);
  });

  await mongoose.disconnect();
};

reset();
