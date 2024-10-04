set -e
#
# make sure: npm install -g typescript
#
rm -rf dist
mkdir dist

KONVA_DIR="konva"

# Check if konva repo is empty and clone if it is
if [ -d "$KONVA_DIR" ]; then
    cd $KONVA_DIR
    git pull
    cd ..
else
  git clone git@github.com:tbo47/konva.git
fi

cd $KONVA_DIR
git checkout .
rm src/index-node.ts 
sed -i '' '30,31d' src/Global.ts
sed -i '' '30s/://' src/Global.ts
sed -i '' 's/\]\.isDragging/\]\?.isDragging/g' src/Global.ts
sed -i '' 's/ES2015/ES2019/g' tsconfig.json
sed -i '' 's/CommonJS/ESNext/g' tsconfig.json
tsc --removeComments
cp -r lib ../dist/lib
git checkout .
cd ..
cp package.json dist/package.json
cd dist
npm link