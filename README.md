[konva-es](https://github.com/tbo47/konva-es/) is [konva](https://github.com/konvajs/konva) at esm format.

[![NPM package](https://img.shields.io/npm/dw/konva-es.svg?logo=npm&logoColor=fff&label=NPM+package&color=limegreen)](https://www.npmjs.com/package/konva-es)

`npm i konva-es`

You want this package if your project is [react](https://react.dev/), [vuejs](https://vuejs.org/), [angular](https://angular.dev/), etc...

Imports need to be update to `konva-es`. Ex:

```javascript
import { Layer } from "konva-es/lib/Layer";
import { Shape } from "konva-es/lib/Shape";
import { Stage } from "konva-es/lib/Stage";
import { Circle } from "konva-es/lib/shapes/Circle";
import { Line } from "konva-es/lib/shapes/Line";
import { Rect } from "konva-es/lib/shapes/Rect";
```

[Demo](https://tbo47.github.io/konva-esm_example1/) and [code](https://github.com/tbo47/tbo47.github.io/blob/main/konva-esm_example1/index.js).

## Test locally

Clone konva: `git clone git@github.com:konvajs/konva.git` (your forked version would be better)

Clone this repo: `git clone git@github.com:tbo47/konva-es.git`

`konva` and `konva-es` need to be in the same folder for the script to work.

`cd konva-es ; ./build-esm.sh`

It transpiles konva to esm format. And does `npm link` for you.

`npm link konva-es` in your project to use it.

Note: tested on macos with nodejs 20
