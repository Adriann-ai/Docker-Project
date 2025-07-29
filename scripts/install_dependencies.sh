#!/bin/bash

# Update system and install JDK
sudo apt-get update
sudo apt-get install openjdk-11-jdk -y

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Copy the JAR file from S3 to local path
aws s3 cp s3://new-adrian-bucket/spring-petclinic-2.7.0-SNAPSHOT.jar /home/ubuntu/spring-petclinic-2.7.0-SNAPSHOT.jar
