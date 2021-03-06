# Use Ionic Image
FROM agileek/ionic-framework AS ionic
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy app source
COPY . .
RUN ionic build
# Bind the port that the image will run on
EXPOSE 8080
# Define the Docker image's behavior at runtime
CMD ["ionic", "serve"]
