<p align="center">
  <img width="250px" src="./assets/graphquill-logo.png" />
</p>

# GraphQuill's Mock GraphQL API
This GraphQL API was created and used for testing during the development of [GraphQuill](https://github.com/oslabs-beta/GraphQuill). GraphQuill is a real-time GraphQL API exploration extension for VSCode.

In an effort to allow other engineers to test out GraphQuill on a mock GraphQL API, we've open-sourced this repo. This project uses a docker instance of **PostgreSQL**.
There is also a locally hosted version that uses PostgreSQL and MongoDB [here](https://github.com/GraphQuill/Mock-GraphQL-API-Local).

---

## Using this GraphQL API
Clone this repo: 

```javascript
git clone https://github.com/GraphQuill/Mock-GraphQL-API.git
```

Within the cloned folder, run the docker-setup script:

```javascript
npm run docker-setup
```

After setting up the docker images, run the docker-compose script to spin up the docker images:

```javascript
npm run docker-compose
```

Your GraphQL API has been setup now and seeded with data from [faker](https://www.npmjs.com/package/faker). Now you can use the [GraphQuill](https://github.com/oslabs-beta/GraphQuill) extension to view the API's schema, send queries or mutations and receive responses, all within VS Code 😀

---
## The Schema of this API

This API was built as the backend of an eCommerce store. Below is the GraphQL schema that describes GraphQL types, available queries and mutations.

```graphql
AVAILABLE QUERIES:
address (id: Int!): Address!
addresses: [Address]!
customer (id: Int!): Customer!
customers: [Customer]!
cart (customerId: Int!): Cart!
order (orderId: Int!): Order!
customerOrders (customerId: Int!): [Order]!
product (productId: Int!): Product!
products: [Product]!
warehouse (warehouseId: Int!): Warehouse!
warehouses: [Warehouse]!

AVAILABLE MUTATIONS:
createOrUpdateAddress (
  customerId: Int!, 
  address: String!, 
  address2: String, 
  city: String!, 
  state: String!, 
  zipCode: String!
  ): Int!
addCustomer (
  firstName: String!, 
  lastName: String!, 
  email: String!, 
  phoneNumber: String!
  ): Customer!
updateCustomer (
  id: Int!, 
  firstName: String, 
  lastName: String, 
  email: String, 
  phoneNumber: String
  ): Customer!
deleteCustomer (id: Int!): Int!
createOrUpdateCart (
  customerId: Int!, 
  newItem: String!
  ): Cart!
removeItemsFromCart (
  customerId: Int!, 
  itemsToRemove: String!
  ): Cart!
deleteCart (customerId: Int!): Cart!
addOrder (
  customerId: Int!, 
  products: OrderProduct!
  ): Int!
addProduct (
  name: String!, 
  description: String!, 
  price: Float!, 
  weight: Float!
  ): Product!
updateProduct (
  productId: Int!, 
  name: String, 
  description: String, 
  price: Float, 
  weight: Float
  ): Product!
deleteProduct (productId: Int!): Product!
addWarehouse (
  name: String!, 
  addressId: Int!
  ): Warehouse!
updateWarehouse (
  warehouseId: Int!, 
  name: String, 
  id: Int
  ): Warehouse!
deleteWarehouse (warehouseId: Int!): Warehouse!


TYPES: 
Address
  id: Int!,
  address: String!,
  address2: String,
  city: String!,
  state: String!,
  zipCode: String!
  
Customer
  id: Int!,
  firstName: String!,
  lastName: String!,
  email: String!,
  phoneNumber: String!,
  address: Address,
  cart: Cart
  
Cart
  customerId: Int!,
  products: [String!],
  wishlist: [String!]
  
Order
  orderId: Int!,
  customer: Customer,
  products: [Product!]
  
Product
  productId: Int!,
  name: String!,
  description: String!,
  price: Float!,
  weight: Float!,
  productQty: Int
  
Warehouse
  warehouseId: Int!,
  name: String!,
  address: Address
```
