" Special indent and syntax highlight for some file types
autocmd BufRead,BufNewFile Vagrantfile set ft=ruby
autocmd BufRead,BufNewFile *.coffee,*.js,*.es,*.es6,*.jsx set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.html set ts=4 sw=4 sts=4 et
autocmd BufRead,BufNewFile *.ejs,*.erb set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.jsp set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.slim,*.tpl.jade,*.jade set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.css set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.less set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.styl set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.json set ts=4 sw=4 sts=4 et
autocmd BufRead,BufNewFile *.yaml,*.yml set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.py set ts=4 sw=4 sts=4 et
autocmd FileType python setlocal completeopt-=preview
autocmd BufRead,BufNewFile *.c,*.cpp,*.cc set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.rb,*.gemspec,Gemfile,Rakefile set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.vim set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.php set sts=0 sw=2 ts=2 noet

autocmd BufNewFile,BufReadPost *.m set filetype=objc
autocmd BufRead,BufNewFile .jshintrc,.eslintrc,.bowerrc set ft=json

augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" New
autocmd FileType ruby set tags+=~/.RubyMotionTags
autocmd FileType ruby set ts=2 sw=2 sts=2 et
