#!/bin/bash
echo "Starting Checking!!!"

basedir="/home/duanu/CI/"
folder="./workspace/test/"
checkstyle_basedir="./checkstyle/"
checkstyle_jar="checkstyle-10.8.0-all.jar"
checkstyle_xml="google_checks.xml"
res_dir="${basedir}/workspace/res/"
replink=$1



cd "$basedir"

echo "Check with checkstyle"
echo $(pwd)

java -jar "$checkstyle_basedir$checkstyle_jar" -c "$checkstyle_basedir$checkstyle_xml" -o "${res_dir}checkstyle.xml" -f="xml"  "$folder"

echo "Ended Checking!!!"

