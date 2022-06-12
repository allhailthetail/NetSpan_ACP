#!/bin/bash

# NetSpna needs a mysql instance in order to host the database...
# Using Docker means that we need a separate container environment to do that.  

docker run --name some-mysql \
	   -e MYSQL_ROOT_PASSWORD=my-secret-pw \
	   -d mysql:latest
