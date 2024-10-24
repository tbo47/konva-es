set -e
rm -rf dist
npx esbuild ../konva/src/index.ts --bundle --platform=neutral --packages=external --outfile=dist/konva-es.9.3.16.js --minify-syntax
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' 's/src_default as default/src_default as Konva/g' dist/konva-es.9.3.16.js
else
  sed -i 's/src_default as default/src_default as Konva/g' dist/konva-es.9.3.16.js
fi