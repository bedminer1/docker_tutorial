# Start from the alpine image that is smaller but no fancy tools
FROM ubuntu:22.04

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Install curl
RUN apt-get -y update && apt-get -y install curl

# Copy the hello.sh file from this directory to /usr/src/app/ creating /usr/src/app/hello.sh
COPY script.sh .

# Grant permission
RUN chmod +x script.sh

# When running docker run the command will be ./hello.sh
ENTRYPOINT ["./script.sh"]