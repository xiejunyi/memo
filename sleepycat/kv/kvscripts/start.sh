#!/bin/bash

nohup java -Xmx1024m -Xms256m -jar $KVLIB/kvstore.jar start -root $KVROOT &
