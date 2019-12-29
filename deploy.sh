#! /bin/sh
rm -rf dist
mkdir dist
cp 1.ts js
tsc 1.ts
git add .
git commit -m$1
git pull
git push origin master