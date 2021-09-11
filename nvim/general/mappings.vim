let mapleader=" "
nnoremap <SPACE> <Nop>

nnoremap <leader>wc :%bd\|e#\|bd#<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>

" Flux file type
au BufRead,BufNewFile *.flux		set filetype=flux
