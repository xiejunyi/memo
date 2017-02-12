#!/bin/bash

rm -rf $KVROOT

mkdir $KVROOT

java -jar $KVLIB/kvstore.jar makebootconfig \
     -root $KVROOT \
    -port 5000 \
    -admin 5001 \
    -host localhost \
    -harange 5010,5025 \
    -store-security configure \
    -capacity 1 \
    -storagedir $KVROOT

