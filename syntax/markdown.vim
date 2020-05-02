" Vim syntax file
" Language: Markdown extended for Jekyll front matter and Liquid
" Maintainer: Erasmus Cedernaes <erasmus.cedernaes@gmail.com>
" Version: 0.4.0
" Created: 2019-08-01
" Last Change: 2020-05-02

if exists('g:loaded_markdown_jekyll_additions')
	finish
endif
let g:loaded_markdown_jekyll_additions = 1

runtime syntax/jekyll_additions.vim
