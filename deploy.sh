#! /bin/sh

mkdir dist
cp js/1.ts dist

git add .
git commit -m'deploy'
git pull
git push origin master