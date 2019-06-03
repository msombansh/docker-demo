# Ubuntu Linux as the base image
FROM ubuntu:16.04

# Install the packages
RUN apt-get update && \
    apt-get -y install default-jre

# Open the following ports
EXPOSE 10000

# Add the files
ADD ./target/demo-1.0-SNAPSHOT-jar-with-dependencies.jar /

# Define the command which runs when the container starts
CMD ["java -cp demo-1.0-SNAPSHOT-jar-with-dependencies.jar HelloWorld"]

# Use bash as the container's entry point
ENTRYPOINT ["/bin/bash", "-c"]
