#!/bin/bash

FILE=$1

java -jar $KVLIB/kvstore.jar runadmin -host $HOSTNAME -port 5000 load -file $1

