# Vim syntax highlighting for Jekyll

Additions to Markdown/HTML/XML highlighting to correctly syntax highlight the front matter and Liquid objects/tags in Jekyll posts.

Highlights the following regions:

* Front matter
* Liquid tags
* Liquid objects

## Installation
You can just copy the syntax files into your local `.vim` directory unless you already have conflicting custom syntax highlighting.

```bash
$ cp vim-jekyll-syntax/syntax/* ~/.vim/after/syntax
```

## Markdown example that will now highlight correctly

```markdown
---
# This becomes highlighted like YAML
foo: bar
---

# Markdown
{{ page.foo }}
```

## Contributors
* [RagnarGrootKoerkamp](https://github.com/RagnarGrootKoerkamp): Fix for Liquid tags in Markdown files

