# hopher.github.io

## 空文件夹处理

### 创建空文件夹

```
find . \( -type d -empty \) -and \( -not -regex ./\.git.* \) -exec touch {}/.gitkeep \;
```

### 删除空文件夹

```
find ./ -type f -name '.gitkeep' -delete
```