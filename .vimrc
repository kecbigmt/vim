" default settings
set fenc=utf-8
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set showmatch
set title
filetype plugin on

" tab
set expandtab
set tabstop=2
set shiftwidth=2

" setting files
source <sfile>:h/dev/src/github.com/kecbigmt/vim/config/keymapping.vim

" expand
let s:dein_dir = $HOME . '/dev/src/github.com/kecbigmt/vim/bundle'
let s:toml_dir= $HOME . '/dev/src/github.com/kecbigmt/vim/config/toml'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" syntax
syntax on
