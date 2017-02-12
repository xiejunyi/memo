#!/bin/bash

java -Xmx256m -Xms256m \
     -jar $KVLIB/kvstore.jar \
     runadmin -port 5000 -host $HOSTNAME \
     -security $KVROOT/security/client.security
