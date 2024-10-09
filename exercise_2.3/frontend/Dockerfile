FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Now copy the rest of the files
COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

# Run the build process
RUN npm run build

# Install 'serve' globally to serve the static files
RUN npm install -g serve

# Serve the build folder
CMD ["serve", "-s", "build", "-l", "5000"]