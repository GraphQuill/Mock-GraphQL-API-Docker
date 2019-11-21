const mongoose = require('mongoose');
const dotenv = require('dotenv');

dotenv.config();

// require in models
const CartModel = require('./models/cartModel');

// export an async function that awaits the connection to the database,
// and returns all defined models
module.exports = async () => {
  // internal pool handling set to 5 connections?
  await mongoose.connect(
    // process.env.MONGO_URI,
    'mongodb+srv://mongoUser:bCtgsmE*3B8AwrrE@cluster0-s5k9v.mongodb.net/test?retryWrites=true&w=majority',
    {
      // these options are just to get rid of some deprecation warnings from mongo...
      useNewUrlParser: true,
      useUnifiedTopology: true,
      poolSize: 5,
      socketTimeoutMS: 500,
    },
  )
    .then(() => console.log('Connected to MongoDB'))
    .catch((err) => console.log('ERROR ON FIRST CONNECTION ATTEMPT TO MONGO:', err));
  // return an object with all the models on it
  return { CartModel };
};
