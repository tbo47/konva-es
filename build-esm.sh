set -e
rm -rf dist
mkdir dist
npm install
cd ../konva
git checkout .
rm src/index-node.ts 
sed -i '' '30,31d' src/Global.ts
sed -i '' '30s/://' src/Global.ts
# it's strange, sometimes it's not usefull to do the following
# https://github.com/konvajs/konva/pull/1828/files
sed -i '' 's/\]\.isDragging/\]\?.isDragging/g' src/Global.ts
sed -i '' 's/CommonJS/ESNext/g' tsconfig.json
npx tsc --removeComments
git checkout .
cd ../konva-es
cp package.json dist/package.json
cp README.md dist/README.md
KONVA_ABS_PATH=$(cd ../konva && pwd)
KONVA_ES_ABS_PATH=$(pwd)
# ln -s $KONVA_ABS_PATH/lib $KONVA_ES_ABS_PATH/dist/
cp -r $KONVA_ABS_PATH/lib $KONVA_ES_ABS_PATH/dist/
cd dist
npm link
npm publish --dry-run
cd ..