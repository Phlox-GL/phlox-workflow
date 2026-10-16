
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

使用者注意：CLI 与 `@calcit/procs` 必须配对使用已发布的 **0.30.1-alpha.4**，
不是尚未发布的 0.30.1 稳定版。使用正式 Phlox 0.7.14 / touch-control 0.0.31，
保留原 Demo、状态 Map、字体加载后的渲染顺序及生产部署路径。
开放 `:states` 操作在使用处检查 cursor，不再依靠伪断言；已有真实 Dynamic 边界不隐瞒。

Use Caps 0.1.1, Node.js 24 and Yarn 4.18.0.
`calcit.cirru` and `deps.cirru` are canonical; compact/package snapshots are retired.
Edit source through the Calcit CLI. Only Phlox and touch-control are direct Calcit
dependencies; unused Respo/UI/memof/lilac imports have been removed.

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn dev
```

`yarn build` compiles the default JS browser entry, copies the existing host
adapter and builds once. `yarn dev` compiles initially and starts Vite; for live
Calcit edits, run `calcit calcit.cirru js -w` in another terminal.

The small font-loading adapter retains render-after-font-load behavior.
CI resolves the formal dependency graph in strict mode and checks full strict,
all definitions and the original five public namespaces before codegen/build;
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
