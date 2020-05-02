" Vim syntax file
" Language: Markdown extended for Jekyll front matter and Liquid
" Maintainer: Erasmus Cedernaes <erasmus.cedernaes@gmail.com>
" Version: 0.3.0
" Created: 2019-08-01
" Last Change: 2020-05-02

if exists('g:loaded_markdown_jekyll_additions')
	finish
endif
let g:loaded_markdown_jekyll_additions = 1

let b:current_syntax = ''
unlet b:current_syntax

syntax include @YAML syntax/yaml.vim
let b:current_syntax = ''
unlet b:current_syntax

syntax include @Liquid syntax/liquid.vim

syntax region yamlFrontMatter matchgroup=frontMatter start="\%^[ \t\n\r]*\_^[ \t]*---[ \t]*$" end="^[ \t]*---[ \t]*$" contains=@YAML keepend
syntax region liquidObject start="{{" end="}}" contains=@Liquid keepend
syntax region liquidTag start="{%" end="%}" contains=@Liquid keepend

hi link frontMatter SpecialComment
