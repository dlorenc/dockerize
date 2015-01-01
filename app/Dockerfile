FROM dockerfile/nodejs

WORKDIR /app
EXPOSE 8080

# Install dependencies
ADD package.json /app/package.json
RUN npm install

# Add the application
ADD . /app

CMD ["npm", "start"]