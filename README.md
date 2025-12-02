[konva-es](https://github.com/tbo47/konva-es/) is [konva](https://github.com/konvajs/konva) published as esm format.

Note: Starting at version 10, konva is also compiled with es2015 format. So konva-es is not super relevant anymore.

2 main differences: 
- this build is just the typescript konva code source transpiled with `tsc` with the javascript comments. No `rollup` or `gulp`. If you are using a project using `vite` or `esbuild`, it will be bundle and minified in one javascript file anyway. But you keep the konva typescript comments while developing your project.
- fixing the `isDragging` [issue](https://github.com/konvajs/konva/pull/1828/files) I couldn't fix otherwise.


<p align="center">
<a href="https://tbo47.github.io/" ><img src="https://img.shields.io/badge/created_by-tbo47-blue.svg" alt="Created by tbo47"></a>
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
