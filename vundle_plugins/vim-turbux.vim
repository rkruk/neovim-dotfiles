if exists('g:vundle_installing_plugins')
  Plugin 'jgdavey/vim-turbux'
  finish
endif

let g:no_turbux_mappings = 1
map <leader>X <Plug>SendTestToTmux
map <leader>x <Plug>SendFocusedTestToTmux
let g:turbux_command_rspec = 'spring rspec'
let g:turbux_command_cucumber = 'spring cucumber'
