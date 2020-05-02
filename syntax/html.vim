" Vim syntax file
" Language: HTML extended for Jekyll front matter and Liquid
" Maintainer: Erasmus Cedernaes <erasmus.cedernaes@gmail.com>
" Version: 0.1.0
" Created: 2020-05-02
" Last Change: 2020-05-02

if exists('g:loaded_html_jekyll_additions')
	finish
endif
let g:loaded_html_jekyll_additions = 1

runtime syntax/jekyll_additions.vim
