FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Run server
EXPOSE 3000
CMD [ "npm", "start" ]
