set -e
rm -rf dist
npx esbuild ../konva/src/index.ts --bundle --platform=neutral --packages=external --outfile=dist/konva-es.9.3.18.js --minify-syntax
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' 's/index_default as default/index_default as Konva/g' dist/konva-es.9.3.18.js
else
  sed -i 's/index_default as default/index_default as Konva/g' dist/konva-es.9.3.18.js
fi
cp dist/konva-es.9.3.18.js ../tbo47.github.io/