" Vim syntax file
" Language: XML extended for Jekyll front matter and Liquid
" Maintainer: Erasmus Cedernaes <erasmus.cedernaes@gmail.com>
" Version: 0.2.0
" Created: 2020-05-02
" Last Change: 2020-05-02
" Usage: Add 'runtime syntax/jekyll_additions.vim' to your syntax-file

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

syntax cluster mkdNonListItem add=liquidObject
syntax cluster mkdNonListItem add=liquidTag
