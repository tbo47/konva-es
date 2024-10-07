<p align="center">
  <a href="https://www.npmjs.com/konva-es"><img src="https://img.shields.io/npm/v/konva-es.svg?logo=npm&logoColor=fff&label=NPM+package&color=limegreen" alt="konva-es on npm" /></a>&nbsp;
  <a href="https://www.npmjs.com/konva-es"><img src="https://img.shields.io/npm/dw/konva-es.svg?logo=npm&logoColor=fff&label=NPM+package&color=limegreen" alt="konva-es on npm" /></a>
</p>

[konva-es](https://github.com/tbo47/konva-es/) is [konva](https://github.com/konvajs/konva) at esm format.

Install: `npm install konva-es`

[konva-es on npmjs](https://www.npmjs.com/package/konva-es)

You want this package if your project is [react](https://react.dev/), [vuejs](https://vuejs.org/), [angular](https://angular.dev/), etc...

Imports need to be update to `konva-es`. Ex:
```javascript
import { Layer } from 'konva-es/lib/Layer'
import { Shape } from 'konva-es/lib/Shape'
import { Stage } from 'konva-es/lib/Stage'
import { Circle } from 'konva-es/lib/shapes/Circle'
import { Line } from 'konva-es/lib/shapes/Line'
import { Rect } from 'konva-es/lib/shapes/Rect'
```

[Live demo](https://tbo47.github.io/konva-esm_example1/) and [code](https://github.com/tbo47/tbo47.github.io/blob/main/konva-esm_example1/index.js).

## Test locally

Install: `npm install -g typescript`

Clone this repo and run: `./build-esm.sh`

It download and transpile konva to esm format. And does `npm link` for you.

`npm link konva-es` in your project to import it.

Note: tested on mac and linux.