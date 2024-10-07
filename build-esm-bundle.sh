set -e
rm -rf dist
npx esbuild konva/src/index.ts --bundle --platform=neutral --packages=external --outfile=dist/konva-es.9.3.15.min.js --minify
npx esbuild konva/src/index.ts --bundle --platform=neutral --packages=external --outfile=dist/konva-es.9.3.15.js