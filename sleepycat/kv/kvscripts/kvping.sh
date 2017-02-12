#!/bin/bash
HOST=$1
java -Xmx1024m -Xms256m -jar $KVLIB/kvstore.jar ping -port 5000 -host $HOST

