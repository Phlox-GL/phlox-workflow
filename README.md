
Phlox workflow in [Calcit](https://calcit-lang.org/)
----

### Usage

使用者注意：CLI 与 `@calcit/procs` 必须精确配对正式 **0.32.1**。
使用已发布 Phlox 0.8.0 / touch-control 0.0.35（传递 JS FFI 0.2.9 与 Pointed Prompt 0.0.24），
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

### 0.32.1 迁移验收

这是用于派生应用的起步模板，不作为业务功能模块单独发版。
官方 formatter 转换 3 处旧类型表达式，9 个定义的 schema 与原附带元数据不变；
只更新工具链、已发布依赖和锁文件，不改变 Demo、字体加载后的渲染顺序或 HUD。
Caps strict 从正式 tag 安装四模块图、工具链配对、187 个全定义、五个命名空间的
9 个公开定义、完整 strict（diagnostics 为空）、不可变安装和构建通过。
项目没有 definition-attached tests，不将发现 0 项算作业务回归成功。
现有 5 处 Dynamic 边界保留，不通过放宽门禁掩盖。

实际隔离页面确认 DEMO 与触控控件绘制、拖动后刷新启动，无 console warning/error；
不扩大为完整视觉或真实移动设备验收，仍保留 Phlox #71 的历史可见性风险。
Yarn 包年龄门禁设为一小时，删除失效的 0.27.0 procs 白名单，不新增逐版本例外。
原 PR 只保存相对路径构建 artifact，不新增 COS 上传或生产部署。

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
