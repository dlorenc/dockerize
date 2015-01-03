FROM dockerfile/nodejs

EXPOSE 8080

# Install dependencies
ADD package.json /data/
RUN npm install

# Add the application
ADD . /data/

CMD ["npm", "start"]