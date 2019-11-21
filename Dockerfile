FROM node:10

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# where available (assuming npm@5+)
COPY package.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 3000
CMD node ./server/index.js