---
title: 'webpack简单配置'
date: 2019-04-30 21:06:42
---

## webpack-dev-server 配置

`webpack-dev-server`本质上就是一个静态文件服务器，方便之处在于有文件变更时能让webpack自动编译更新文件，并自动刷新页面。

### 1. 安装
```
npm install webpack-dev-server --save-dev
```

### 2. 在`package.json`的`scripts`中配置启动命令，以及可以指定静态HTML文件所在目录（例如：dist中含有`index.html`）
``` 
"start:dev": "webpack-dev-server --content-base ./dist"
```

### 3. 在`index.html`中引入webpack打包生成的JS的路径
```
<script type="text/javascript" src="bundle.js"></script>
```

### 4. 配置后端代理服务
```
devServer: {
    proxy: {
        '/': 'http://localhost:8081'
    }
},
```