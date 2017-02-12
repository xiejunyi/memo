 #!/bin/bash

java -jar /Users/junyi/work/oracle/hg/kv-bug/kvstore/dist/lib/kvstore.jar stop -root $KVROOT

rm -rf $KVROOT
mkdir $KVROOT

/Users/junyi/work/memo/oracle/kv/kvscripts/makebootconfig_capacity1.sh

nohup java -Xmx1024m -Xms256m -jar /Users/junyi/work/oracle/hg/kv-bug/kvstore/dist/lib/kvstore.jar start -root $KVROOT &

#java -jar /Users/junyi/work/oracle/hg/kv-bug/kvstore/dist/lib/kvstore.jar runadmin -host localhost -port 5000 load -file /Users/junyi/work/memo/oracle/kv/kvscripts/config_1x1
#java -jar /Users/junyi/work/oracle/hg/kv-bug/kvstore/dist/lib/kvstore.jar runadmin -host localhost -port 5000
