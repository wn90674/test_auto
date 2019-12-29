#! /bin/sh
npm run build
cp dist/* ../HelloCordova/platforms/ios/www/
git add .
git commit -m$1
git pull
git push origin master