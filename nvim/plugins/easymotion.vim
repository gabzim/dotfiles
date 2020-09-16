" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-s2)
" nmap S <Plug>(easymotion-overwin-t)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

"Lower case finds upper & lower case but upper case only finds upper case
let g:EasyMotion_smartcase = 1
