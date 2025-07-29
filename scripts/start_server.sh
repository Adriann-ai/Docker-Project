#!/bin/bash

cd /home/ubuntu/
java -jar spring-petclinic-2.7.0-SNAPSHOT.jar > /var/log/app.log 2>&1 &
