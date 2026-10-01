
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

Use Calcit/procs 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
`calcit.cirru` and `deps.cirru` are canonical; compact/package snapshots are retired.
Edit source through the Calcit CLI. Only Phlox and touch-control are direct Calcit
dependencies; unused Respo/UI/memof/lilac imports have been removed.

```sh
caps --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru js
cp assets/*.mjs js-out/
yarn vite
```

The small font-loading adapter retains render-after-font-load behavior.
CI checks strict entry types and all app public definitions before codegen/build;
there are no duplicated diagnostic or upload verification scripts.

### Deployment

Main frontend builds use `https://cos-sh.tiye.me/Phlox-GL/phlox-workflow/`.
COS action v1.1.1 uploads `dist` and verifies via `public-base-url`.
The original server source/destination are unchanged and deploy only on main.
PR builds use a PR/run-specific CDN base but do not receive deployment secrets or
upload; enable previews only after protected preview credentials are configured.

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
