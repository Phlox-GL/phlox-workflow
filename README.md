
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

使用者注意：CLI 与 `@calcit/procs` 配对使用正式 **0.40.0**。
升级后重新安装依赖并构建。使用已发布 Phlox 0.9.3 和 Touch Control 0.0.39，
Demo、字体加载后渲染的顺序和页面 `hud!` 提示沿用原行为。

派生应用从具名 `Store` 和 `Op` 扩展业务字段与操作。渲染入口直接接收具名操作，`CursorKey` 允许 Tag、String 和 Number。接入发出匿名状态事件的旧 Phlox 控件时，在入口校验游标和控件所需字段，再构造 `Op :states`。恢复外部存档时先解码为 `Store`，再构造 `Op :hydrate-storage`。Pixi 保持 7.x。

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
CI resolves the published dependency graph in strict mode and checks full strict,
all definitions and the original five public namespaces before codegen/build;
there are no duplicated diagnostic or upload verification scripts.

### 模板验收

这是派生应用的起步模板。项目没有附带测试，CI 通过原类型和构建门禁验证模板。
Yarn 保留一小时包年龄门禁。PR 保存相对路径构建 artifact。

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
