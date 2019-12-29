#! /bin/sh

mkdir dist
cp 1.ts dist

git add .
git commit -m'deploy2'
git pull
git push origin master