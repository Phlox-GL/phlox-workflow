
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
yarn dev
```

`yarn build` compiles the default JS browser entry, copies the existing host
adapter and builds once. `yarn dev` compiles initially and starts Vite; for live
Calcit edits, run `calcit calcit.cirru -w` in another terminal.

The small font-loading adapter retains render-after-font-load behavior.
CI checks strict entry types and all app public definitions before codegen/build;
there are no duplicated diagnostic or upload verification scripts.

### Deployment

Main frontend builds use `https://cos-sh.tiye.me/Phlox-GL/phlox-workflow/`.
Released COS action v1.2.0 uploads `dist`, validates HTML references and publicly
verifies via `public-base-url`, without an extra verification script.
The original server source/destination are unchanged and deploy only on main.
PR builds use `pr/<number>/<run-id>/<attempt>/` but do not receive deployment secrets or
upload; enable previews only after protected preview credentials are configured.
Runs queue per PR and separately for production, without cancelling uploads.

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
