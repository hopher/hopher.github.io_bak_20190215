# hopher.github.io

[![Build Status](https://www.travis-ci.org/hopher/hopher.github.io.svg?branch=src)](https://travis-ci.org/hopher/hopher.github.io)

## 开启服务

```
hugo server -D --bind=0.0.0.0
```

## 添加文章

```
hugo new posts/my-first-post.md
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

- [GitHub Pages 布署](https://docs.travis-ci.com/user/deployment/pages/)
- [Building a Go Project](https://docs.travis-ci.com/user/languages/go/)

### 其它步骤 

#### 创建 GITHUB_TOKEN 变量

https://github.com/settings/tokens

#### 添加 Travis CI 环境变量

将 GITHUB_TOKEN 添加到 Environment Variables

https://travis-ci.com/hopher/hopher.github.io/settings