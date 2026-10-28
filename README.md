
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

使用者注意：CLI 与 `@calcit/procs` 必须精确配对正式 **0.31.0**。
使用已发布 Phlox 0.8.0-alpha.3 / touch-control 0.0.34（传递 JS FFI 0.2.7），
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
CI resolves the published dependency graph in strict mode and checks full strict,
all definitions and the original five public namespaces before codegen/build;
there are no duplicated diagnostic or upload verification scripts.

### 0.31.0 迁移验收

本次仅升级依赖及锁文件，未修改应用源码或类型门禁。全部 187 个定义、完整 strict、
工具链配对、immutable 安装和前端构建已通过。项目没有 definition-attached tests，
不能将测试发现的 0 项算作业务回归通过。现有 Map 状态的 5 处 Dynamic 类型边界仍保留，
未通过改基线掩盖。原有五个命名空间的 9 个公开定义检查也已通过。
Phlox 使用已发布 alpha 依赖；隔离 IAB 页面能显示 DEMO，左控制盘拖动有响应，刷新恢复，
控制台无 error/warn。部分触控按钮描边截图不完整，尚不能区分渲染和捕获问题，
不据此宣称完整视觉验收通过；保留 Phlox #71 的可见性风险。PR CI 尚待验收。

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
