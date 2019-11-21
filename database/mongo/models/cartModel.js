const mongoose = require('mongoose');

const { Schema } = mongoose;

const cartSchema = new Schema({
  customerId: { type: Number, required: true },
  products: { type: [String] },
  wishlist: { type: [String] },
});

module.exports = mongoose.model('Cart', cartSchema); // will make a collection names carts
