#! /bin/bash

rm ./cscope*.*

find . -name "*.java" > ./cscope.files
find . -name "*.html" >> ./cscope.files
find . -name "*.xml" >> ./cscope.files

## generate index file
cscope -Rbkqi ./cscope.files
## invoke cscope
## cscope -Rki ./cscope.files

