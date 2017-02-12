#!/bin/bash

java -jar $KVLIB/kvstore.jar makebootconfig \
    -root $KVROOT \
    -port 5000 \
    -admin 5001 \
    -host $HOSTNAME \
    -harange 5010,5025 \
    -store-security none \
    -capacity 3 \
    -storagedir $KVROOT

