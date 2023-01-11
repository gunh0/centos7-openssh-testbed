#!/bin/bash

# Specify the name of your Docker container
CONTAINER_NAME="centos79_1"

# Copy the Apache configuration directory from the container to the host
docker cp "${CONTAINER_NAME}:/etc/httpd/conf/." ./cent79_1_httpd.conf

# Specify the name of your Docker container
CONTAINER_NAME="centos79_2"

# Copy the Apache configuration directory from the container to the host
docker cp "${CONTAINER_NAME}:/etc/httpd/conf/." ./cent79_2_httpd.conf