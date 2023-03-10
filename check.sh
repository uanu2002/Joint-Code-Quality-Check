#!/bin/bash
echo "Starting Checking!!!"

basedir="/home/duanu/CI/"
folder="./workspace/test/"
checkstyle_basedir="./checkstyle/"
checkstyle_jar="checkstyle-10.8.0-all.jar"
checkstyle_xml="google_checks.xml"
res_dir="${basedir}/workspace/res/res.html"
replink=$1


cd "$basedir"

if [ -d "$folder" ]; then
    yes | rm -r "$folder"
fi

mkdir "$folder"

cd "$folder"

echo "Cloning Reposity"
git clone "$replink"
cd "$basedir"

echo "Check with checkstyle"
echo $(pwd)

java -jar "$checkstyle_basedir$checkstyle_jar" -c "$checkstyle_basedir$checkstyle_xml" -o "$res_dir" "$folder"

echo "Ended Checking!!!"
