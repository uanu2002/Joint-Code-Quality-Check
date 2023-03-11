#!/bin/bash

basedir="/home/duanu/CI/"
folder="./workspace/test/"
folder2="./workspace/res/"
OJ_dir="/home/duanu/OJ/test/"
rep=$1

if [ $# -eq 0 ];then
    echo "Parm Doesn't exist,don't run this shell"
    exit 1
fi

cd "$basedir"
echo "Deleting existed workspace"
if [ -d "$folder" ]; then
    yes | rm -r "$folder"
    yes | rm -r "$folder2"
fi

mkdir "$folder"
mkdir "$folder2"

echo "Creating new workspace"
cd "$folder"
echo "Cloning Reposity"
git clone "$rep"
if [ -d "${OJ_dir}" ]; then
    yes | rm -r "${OJ_dir}"
fi
mkdir "$OJ_dir"
cp -r "./" "${OJ_dir}"
cd "$basedir"

