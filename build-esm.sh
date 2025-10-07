set -e
# make sur npm install typescript is installed
rm -rf dist
mkdir dist
npm install
cd ../konva
git checkout .
# it's the sed syntax for macos, it can easily be changed for linux
sed -i '' '30,31d' src/Global.ts
sed -i '' '30s/://' src/Global.ts
# it's strange, sometimes it's not usefull to do the following
# https://github.com/konvajs/konva/pull/1828/files
sed -i '' 's/\]\.isDragging/\]\?.isDragging/g' src/Global.ts
tsc --removeComments
git checkout .
cd ../konva-es
cp package.json dist/package.json
cp README.md dist/README.md
KONVA_ABS_PATH=$(cd ../konva && pwd)
KONVA_ES_ABS_PATH=$(pwd)
mkdir $KONVA_ES_ABS_PATH/dist/lib
mv $KONVA_ABS_PATH/lib/* $KONVA_ES_ABS_PATH/dist/lib/
cd dist
npm publish --dry-run
cd ..
# if you want to publish the package, cd dist and npm publish