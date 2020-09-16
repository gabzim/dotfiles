" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  " Change dates fast
  Plug 'tpope/vim-speeddating'
  " Convert binary, hex, etc..
  Plug 'glts/vim-radical'
  " Repeat stuff
  Plug 'tpope/vim-repeat'
  " Surround
  Plug 'tpope/vim-surround'
  " Better Comments
  Plug 'tpope/vim-commentary'
  " Plug 'preservim/nerdcommenter'
  " Have the file system follow you around
  Plug 'airblade/vim-rooter'
  " auto set indent settings
  Plug 'tpope/vim-sleuth'

  Plug 'unblevable/quick-scope'

  if exists('g:vscode')
    " Easy motion for VSCode
    Plug 'asvetliakov/vim-easymotion'
  else
    " Start Screen
    Plug 'mhinz/vim-startify'

    " Status Line
    Plug 'vim-airline/vim-airline'

    " File Explorer & Git related plugins
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Add some color & icons & themes
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'morhetz/gruvbox'
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }


    " tmux pane switching
    Plug 'christoomey/vim-tmux-navigator'

    " Close buffers without closing split
    Plug 'moll/vim-bbye'

    " Text Navigation
    Plug 'justinmk/vim-sneak'

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Auto pairs for '(' '[' '{' 
    Plug 'jiangmiao/auto-pairs'
    
    " Closetags
    Plug 'alvan/vim-closetag'

    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    Plug 'honza/vim-snippets'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    
    " Vista
    Plug 'liuchengxu/vista.vim'

    " Making stuff
    Plug 'neomake/neomake'

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
    
  endif


call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
