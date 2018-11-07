FROM node:8-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies (production only)
RUN npm install --only=production

# Bundle app source
COPY src .

EXPOSE 8081
CMD [ "npm", "start" ]
