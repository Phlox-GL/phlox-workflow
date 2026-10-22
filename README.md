
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

使用者注意：CLI 与 `@calcit/procs` 必须精确配对正式 **0.30.1**。
使用已发布 Phlox 0.7.16 / touch-control 0.0.32（传递 JS FFI 0.2.5），
保留原 Demo、状态 Map、字体加载后的渲染顺序及生产部署路径。
开放 `:states` 操作在使用处检查 cursor，不再依靠伪断言；已有真实 Dynamic 边界不隐瞒。
Pixi 仍使用 7.x，更新至 7.4.3；其 `@pixi/assets` 已修复旧版本的 utils peer 元数据要求。
原有 `hud!` 页面报错/成功提示保持不变，不用 `raise` 替代。

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
PRs reserve `pr/<number>/<run-id>/<attempt>/` but do not receive deployment secrets or
upload; their build uses relative asset URLs so the saved artifact works directly.
Enable COS previews only after protected preview credentials are configured.
CI saves the actual PR `dist` as a short-lived artifact for browser acceptance;
this does not enable COS uploads or production deployment for PRs.
Runs queue per PR and separately for production, without cancelling uploads.

### Workflow

https://github.com/Phlox-GL/phlox-workflow

### License

MIT
