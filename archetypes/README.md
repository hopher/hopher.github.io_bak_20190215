# Archetypes

Archetypes are templates used when creating new content.

## What are Archetypes?[ ](https://gohugo.io/content-management/archetypes/#what-are-archetypes)

**Archetypes** are content template files in the [archetypes directory](https://gohugo.io/getting-started/directory-structure/) of your project that contain preconfigured [front matter](https://gohugo.io/content-management/front-matter/) and possibly also a content disposition for your website’s [content types](https://gohugo.io/content-management/types/). These will be used when you run `hugo new`.

The `hugo new` uses the `content-section` to find the most suitable archetype template in your project. If your project does not contain any archetype files, it will also look in the theme.

archetype-example.sh

```sh
hugo new posts/my-first-post.md
```

The above will create a new content file in `content/posts/my-first-post.md` using the first archetype file found of these:

1. `archetypes/posts.md`
2. `archetypes/default.md`
3. `themes/my-theme/archetypes/posts.md`
4. `themes/my-theme/archetypes/default.md`

The last two list items are only applicable if you use a theme and it uses the `my-theme` theme name as an example.

## 参考资料

https://gohugo.io/content-management/archetypes/