#!/bin/sh

echo "run"
rm -rf `ls | egrep -v 'node_modules|package.json|webpack.sh'`
cp ../temp/* .
node_modules/webpack/bin/webpack.js
cp `ls | egrep -v 'node_modules|package.json|webpack.sh'` ../temp
echo "done"