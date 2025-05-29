[konva-es](https://github.com/tbo47/konva-es/) is [konva](https://github.com/konvajs/konva) at esm format.

ES2015 module is more efficient than other formats and can facilitate the creation of smaller bundle size through tree-shaking technique.

<p align="center">
<a href="https://tbo47.github.io/" ><img src="https://img.shields.io/badge/created_by-tbo47-blue.svg" alt="Created by tbo47"></a>
<a href="https://opensource.org/licenses/MIT" rel="nofollow"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License"></a>
<a href="https://www.npmjs.com/package/konva-es" rel="nofollow"><img src="https://img.shields.io/npm/dw/konva-es.svg" alt="npm"></a>
</p>


`npm i konva-es`

Imports need to be update to `konva-es`. Ex:

```javascript
import { Layer } from "konva-es/lib/Layer";
import { Shape } from "konva-es/lib/Shape";
import { Stage } from "konva-es/lib/Stage";
import { Circle } from "konva-es/lib/shapes/Circle";
import { Line } from "konva-es/lib/shapes/Line";
import { Rect } from "konva-es/lib/shapes/Rect";
```

[Demo of more advanced components](https://github.com/tbo47/konva-components)

[Demo](https://tbo47.github.io/konva-esm_example1/) and [code](https://github.com/tbo47/tbo47.github.io/blob/main/konva-esm_example1/index.js).

[Demo 2](https://jsfiddle.net/zd4u7wy6/)

## Test locally

Clone konva: `git clone git@github.com:konvajs/konva.git` (your forked version would be better)

Clone this repo: `git clone git@github.com:tbo47/konva-es.git`

`konva` and `konva-es` need to be in the same folder for the script to work.

`cd konva-es ; ./build-esm.sh`

It transpiles konva to esm format. And does `npm link` for you.

`npm link konva-es` in your project to use it.

Note: tested on macos with nodejs 20
