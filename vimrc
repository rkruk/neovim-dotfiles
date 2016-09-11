" =============================================================================
" Who: Rafal Kruk (@kruk_co)
" Description: My Personal Neovim Dotfiles Configuration
" Version: 1.0 - Well.. not really 1.0.. I spend shitload of time reasearching all possible dotfile repos around and breaking things until my own dotfile's repo was finished.
" =============================================================================

" All of the plugins are installed with Vundle from this file.
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" All of the Vim configuration.
source ~/.vim/config.vim
" New commands
source ~/.vim/commands.vim
" All hotkeys, not dependant on plugins, are mapped here.
source ~/.vim/mappings.vim
" Load plugin-specific configuration.
source ~/.vim/plugins.vim
" Small custom functions.
source ~/.vim/functions.vim
" Auto commands.
source ~/.vim/autocmds.vim