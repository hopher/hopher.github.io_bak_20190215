# hopher.github.io

[![Build Status](https://travis-ci.com/hopher/hopher.github.io.svg?branch=src)](https://travis-ci.com/hopher/hopher.github.io)

## 开启服务

```
hugo server -D --bind=0.0.0.0
```

## 添加文章

```
hugo new posts/201811/my-first-post/index.md
```

## 空文件夹处理

### 创建空文件夹

```
find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitkeep \;
```

### 删除空文件夹

```
find ./ -type f -name '.gitkeep' -delete
```

## Travis CI 集成测试教程

**步骤** 

1. 创建master和src分支，src用于存放hugo文件，master存放hugo静态页

2. 创建 GITHUB_TOKEN 变量

    https://github.com/settings/tokens

3. 添加 Travis CI 环境变量

    将 GITHUB_TOKEN 添加到 Environment Variables

    https://travis-ci.com/hopher/hopher.github.io/settings

4. 在项目根目录创建 `.travis.yml` 文件，并添加下面内容


    ```
    language: go

    go:
    - "1.11"  # 指定Golang 1.11

    # Specify which branches to build using a safelist
    # 分支白名单限制: 只有hugo分支的提交才会触发构建
    branches:
    only:
        - src 

    install:
    # 安装最新的hugo
    - go get github.com/spf13/hugo 

    script:
    # 运行hugo命令
    - hugo

    deploy:
    provider: pages # 重要，指定这是一份github pages的部署配置
    skip-cleanup: true # 重要，不能省略
    local-dir: public # 静态站点文件所在目录
    target-branch: master # 要将静态站点文件发布到哪个分支
    github-token: $GITHUB_TOKEN # 重要，$GITHUB_TOKEN是变量，需要在GitHub上申请、再到配置到Travis
    fqdn:  # 如果是自定义域名，此处要填
    keep-history: true # 是否保持target-branch分支的提交记录
    on:
        branch: src # 博客源码的分支
    ```

**参考资料**
- [GitHub Pages 布署](https://docs.travis-ci.com/user/deployment/pages/)
- [Building a Go Project](https://docs.travis-ci.com/user/languages/go/)    