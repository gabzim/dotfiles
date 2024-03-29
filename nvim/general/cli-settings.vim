  syntax enable                           " Enables syntax highlighing
  set hidden                              " Required to keep multiple buffers open multiple buffers
  set nowrap                              " Display long lines as just one line
  set encoding=utf-8                      " The encoding displayed 
  set pumheight=10                        " Makes popup menu smaller
  set fileencoding=utf-8                  " The encoding written to file
  set ruler              			            " Show the cursor position all the time
  set cmdheight=2                        " More space for displaying messages
  set mouse=a                             " Enable your mouse
  set splitbelow                          " Horizontal splits will automatically be below
  set splitright                          " Vertical splits will automatically be to the right
  set t_Co=256                            " Support 256 colors
  set conceallevel=0                      " So that I can see `` in markdown files
  set tabstop=2                           " Insert 2 spaces for a tab
  set shiftwidth=2                        " Change the number of space characters inserted for indentation
  set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
  set expandtab                           " Converts tabs to spaces
  set smartindent                         " Makes indenting smart
  set autoindent                          " Good auto indent
  set laststatus=2                        " Always display the status line
  set number relativenumber               " Line numbers
  set cursorline                          " Enable highlighting of the current line
  set background=dark                     " tell vim what the background color looks like
  set showtabline=2                       " Always show tabs 
  set noshowmode                          " We don't need to see things like -- INSERT -- anymore
  set nobackup                            " This is recommended by coc
  set nowritebackup                       " This is recommended by coc
  set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
  set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
  set updatetime=400                      " Faster completion
  set clipboard=unnamedplus               " Copy paste between vim and everything else
  set incsearch
  set guifont=JetBrainsMono\ Nerd\ Font\ Mono:h16
  set termguicolors
  set timeoutlen=1000
  set ttimeoutlen=5
  set ignorecase
  set smartcase

  set foldmethod=indent   
  set foldnestmax=10
  set nofoldenable
  set foldlevel=2
  set nohlsearch

  let g:neovide_cursor_vfx_mode = "railgun"
  let g:neovide_transparency = 1
  " let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  " set mmp=1300
  " set autochdir                           " Your working directory will always be the same as your working directory
  " set foldcolumn=2                        " Folding abilities

  " au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


  " You can't stop me
  cmap w!! w !sudo tee %

augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END
