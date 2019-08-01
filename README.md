# Vim syntax highlighting for Jekyll

Additions to Markdown highlighting to correctly syntax highlight the front matter and Liquid objects/tags in Jekyll posts.

## Installation
You can just copy the syntax file into your local `.vim` directory unless you already have custom Markdown syntax highlighting.

```bash
$ cp vim-jekyll-syntax/syntax/Markdown.md ~/.vim/after/syntax/Markdown.md
```

## Example of highlighted regions
```markdown
---
foo: bar
---

# Markdown
{{ page.foo }}
```

