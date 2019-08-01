" Vim syntax file
" Language: Markdown extended for Jekyll front matter and Liquid
" Maintainer: Erasmus Cedernaes <erasmus.cedernaes@gmail.com>
" Version: 0.1.0
" Last Change: 2019-08-01

if exists('g:loaded_markdown_jekyll_additions')
	finish
endif
let g:loaded_markdown_jekyll_additions = 1

syntax include @Markdown syntax/markdown.vim

let b:current_syntax = ''
unlet b:current_syntax
syntax include @YAML syntax/yaml.vim
syntax include @Liquid syntax/liquid.vim
syntax region yamlFrontMatter matchgroup=frontMatter start="^---$" end="^---$" containedin=@Markdown contains=@YAML
syntax region liquidObject matchgroup=lobject start="{{" end="}}" containedin=@YAML contains=@Liquid
syntax region liquidTag matchgroup=ltag start="{%" end="%}" containedin=@YAML contains=@Liquid

hi link frontMatter SpecialComment
hi link lobject SpecialComment
hi link ltag SpecialComment

let b:current_syntax = 'markdown'
