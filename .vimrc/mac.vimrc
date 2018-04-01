set tabstop=2
set softtabstop=2
set expandtab

" The damn backslash is too far away
let mapleader=","

" Fix lag
set timeoutlen=1000 ttimeoutlen=10

" Automatic toggling between line number modes
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" vim-plug stuff
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'

Plug 'danro/rename.vim'

Plug 'tpope/vim-surround'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'

" JS syntax and stuff
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

" status line tweaks
set laststatus=2
set noshowmode
set statusline+=%{fugitive#statusline()}

syntax enable
set background=light
colorscheme solarized

" Emmet settings
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

" prettier settings
let g:prettier#config#print_width = 100
let g:prettier#config#semi = 'false'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#parser = 'flow'
let g:prettier#config#trailing_comma = 'none'

" Nerdtree and stuff
map <C-o> :NERDTreeToggle<Return>
" autocmd vimenter * NERDTree " load Nerdtree on startup

set history=1000
set undolevels=1000
set title

filetype plugin indent on
