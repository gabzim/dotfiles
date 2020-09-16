set iskeyword+=-                      	" treat dash separated words as a word text object"
set formatoptions-=cro                  " Stop newline continution of comments

" Always source these
source $HOME/.config/nvim/plugins/install.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/global-settings.vim

" Source depending on if VSCode is our client
if exists('g:vscode')
    " VSCode extension
  "source $HOME/.config/nvim/vscode/vscode-neovim.vim
  source $HOME/.config/nvim/vscode/quickscope.vim
  source $HOME/.config/nvim/vscode/vscode-gabzim.vim
  source $HOME/.config/nvim/plugins/easymotion.vim
else
  " ordinary neovim
  source $HOME/.config/nvim/general/cli-settings.vim
  source $HOME/.config/nvim/themes/syntax.vim
  source $HOME/.config/nvim/themes/airline.vim
  source $HOME/.config/nvim/plugins/tmux.vim
  source $HOME/.config/nvim/plugins/fzf.vim
  source $HOME/.config/nvim/plugins/nerd-commenter.vim
  source $HOME/.config/nvim/plugins/quickscope.vim
  source $HOME/.config/nvim/plugins/coc.vim
  source $HOME/.config/nvim/plugins/sneak.vim
  source $HOME/.config/nvim/plugins/start-screen.vim
  source $HOME/.config/nvim/plugins/git.vim
  source $HOME/.config/nvim/plugins/closetags.vim
  source $HOME/.config/nvim/plugins/vista.vim
  luafile $HOME/.config/nvim/lua/plug-colorizer.lua
endif
