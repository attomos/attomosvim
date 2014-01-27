" Special indent and syntax highlight for some file types
autocmd BufRead,BufNewFile Vagrantfile set ft=ruby
autocmd BufRead,BufNewFile *.coffee,*.js set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.html set ts=2 sw=2 sts=2 et ft=htmldjango
autocmd BufRead,BufNewFile *.ejs,*.erb set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.jsp set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.slim,*.tpl.jade,*.jade set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.css set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.less set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.styl set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.json set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.yaml,*.yml set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.py set ts=4 sw=4 sts=4 et
autocmd BufRead,BufNewFile *.cpp,*.cc set ts=2 sw=2 sts=2 et
autocmd BufRead,BufNewFile *.rb,*.vim,Rakefile set ts=2 sw=2 sts=2 et
autocmd BufNewFile,BufReadPost *.m set filetype=objc


" New
autocmd FileType ruby set tags+=~/.RubyMotionTags
