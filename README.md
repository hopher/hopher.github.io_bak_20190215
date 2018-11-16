# hopher.github.io

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