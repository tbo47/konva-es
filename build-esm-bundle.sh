set -e
rm -rf dist

# Read version number from package.json
VERSION=$(jq -r '.version' package.json)

echo "Building ESM bundle for Konva version $VERSION"

npx esbuild ../konva/src/index.ts --bundle --platform=neutral --packages=external --outfile=dist/konva-es.$VERSION.js --minify-syntax
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' 's/index_default as default/index_default as Konva/g' dist/konva-es.$VERSION.js
else
  sed -i 's/index_default as default/index_default as Konva/g' dist/konva-es.$VERSION.js
fi
cp dist/konva-es.$VERSION.js ../tbo47.github.io/