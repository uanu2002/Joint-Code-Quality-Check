#!/bin/bash

basedir="/home/duanu/CI/"
folder="./workspace/test/"
res_dir="${basedir}/workspace/res/"
echo "Check with Findbugs"

cd "$basedir"

findbugs -textui -maxHeap 2048 -html:fancy.xsl -output "${res_dir}findbugs.html" "${folder}"

cp "${res_dir}findbugs.html" ~/NoOJ/style/templates/
echo "Ended Checking!!!"


