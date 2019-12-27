FROM node:10-slim

WORKDIR /usr/src/app

# Copy app depndency
COPY package*.json ./

# Install prod dependencies
RUN npm install --only=production

# Copy local code to container image
COPY . ./

# Run web service on container startup
CMD [ "npm", "start" ]