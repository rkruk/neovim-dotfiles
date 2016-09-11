# My Personal Neovim Dotfiles Configuration

This Vim Dotfile configuration is just a bit simplified and customised to my personal needs copy of amazing [Jeremy Mack](https://github.com/mutewinter) [dot_vim](https://github.com/mutewinter/dot_vim) repo. The only small differences here are:
- Rewritten small part of configuration for Linux use only (Gentoo/Funtoo). Thus all files, plugins, configs for Mac Os X platform have been removed.
- Configuration is stripped from all unnecessary things (I'm not so much into Ruby programming environment - so here I'm trying to keep it really minimal and just to run some basics).


## Installation

1. `git clone http://github.com/rkruk/neovim-dotfiles.git ~/.vim`.
1. `cd ~/.vim`.

Install it: 

1. Run: `scripts/setup`.

**or**

And enjoy it! :)

## Neovim Requirements

* [NeoVim](https://github.com/neovim/neovim)

Prior to install you must run a few things. Make sure you have Neovim installed:

`emerge -av app-editors/neovim`

A "live" ebuild can be found in [yngwin's](http://cgit.gentooexperimental.org/dev/yngwin.git/tree/app-editors/neovim) developer overlay.
For instructions on how to install the Python modules, see [:help provider-python](https://neovim.io/doc/user/provider.html#provider-python).

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Jellybeans](http://www.vim.org/scripts/script.php?script_id=2555) A colorful, dark color scheme for Vim.

`cd .vim && mkdir colors && cd colors && wget http://www.vim.org/scripts/download_script.php?src_id=17225`

Or you can use [Solarized Theme](http://ethanschoonover.com/solarized/vim-colors-solarized) like I do for everything.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git (ofc though) to be
  installed.

  On Funtoo you have git already installed at this point.. On Gentoo just do:
  `emerge --ask dev-vcs/git`

  and fill your git basic details:

  `git config --global user.email "<larry@gentoo.org>"`
  `git config --global user.name "<larry_the_cow>"`
  
  More [here](https://wiki.gentoo.org/wiki/Git).

* [syntastic](https://github.com/scrooloose/syntastic) Requires many different
  binaries installed depending on what filetypes you want it to check. Syntastic 
  itself has rather relaxed requirements: it doesn't have any external dependencies, 
  and it needs a version of Vim compiled with a few common features: 
  autocmd, eval, file_in_path, modify_fname, quickfix, reltime, and user_commands .

  See the
  [FAQ](https://github.com/scrooloose/syntastic#faq) for more information.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
  For Funtoo and Gentoo Linux systems - it is already in the repository:

`emerge -av the_silver_searcher`

* [Source Code for Powerline](http://git.io/H3fYBg) The custom font I'm using
  for vim-airline.

  Download Source Code from [SourceCodePro Repo](https://git.io/vi0ZE) and copy 
  them to `.fonts` directory in your `/home` directory.

* [CtrlP C Matching Extension](https://github.com/JazzCore/ctrlp-cmatcher)
  requires compilation. More details [in its
  readme](https://github.com/JazzCore/ctrlp-cmatcher).

  First, make sure that Python header files are installed on your system (you should have them on Gentoo/Funtoo already).
  And get extension files from [ctrlp repo](https://github.com/JazzCore/ctrlp-cmatcher) 
  Copy it to the: `~/.vim/bundle/` directory.

  Then run the installation script:

`cd ~/.vim/bundle/ctrlp-cmatcher`

`./install.sh`

* [underscore-cli](https://github.com/ddopson/underscore-cli) for JSON
  formatting. To have it you must have nodejs and NPM installed.

Gentoo:
`cat /etc/portage/package.keywords

=net-libs/nodejs-0.10.10 ~amd64`

Funtoo somehow doesn't need that argument to have it working.

Install nodejs:

`emerge -av nodejs`

then do:

`curl https://npmjs.org/install.sh | sh`

Finally install `underscore-cli` with the little help of npm:

`npm install -g underscore-cli`


## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer.

And many more. See [`mappings.vim`](mappings.vim) and
[`vundle_plugins`](vundle_plugins) for more.

## Installing Custom Plugins

Create a new `.vim` file with the same name as the plugin you'd like to install
in [`vundle_plugins/custom`](vundle_plugins/custom). Then add the installation
block. For example:

`vundle_plugins/custom/vim-move.vim`

```viml
if exists('g:vundle_installing_plugins')
  Plugin 'matze/vim-move.vim'
  finish
endif

let g:move_key_modifier = 'C'
```

This example installs [`vim-move`](https://github.com/matze/vim-move).


## Currently Used Here Plugin List:

## Plugin List

| Stars___ | **Plugin** | **Description** |
| -------: | :--------- | :-------------- |
| 11,177 ★ |[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) [:page_facing_up:](vundle_plugins/YouCompleteMe.vim)|A code-completion engine for Vim |
| 7,633 ★ |[vim-airline](https://github.com/vim-airline/vim-airline) [:page_facing_up:](vundle_plugins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| 7,085 ★ |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](vundle_plugins/vim-fugitive.vim)|fugitive.vim: a Git wrapper so awesome, it should be illegal |
| 6,526 ★ |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](vundle_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| 3,789 ★ |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](vundle_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| 3,246 ★ |[emmet-vim](https://github.com/mattn/emmet-vim)|emmet for vim: http://emmet.io/ |
| 2,601 ★ |[vim-easymotion](https://github.com/easymotion/vim-easymotion) [:page_facing_up:](vundle_plugins/vim-easymotion.vim)|Vim motions on speed! |
| 2,470 ★ |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](vundle_plugins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| 1,824 ★ |[supertab](https://github.com/ervandew/supertab)|Perform all your vim insert mode completions with Tab |
| 1,714 ★ |[vim-javascript](https://github.com/pangloss/vim-javascript)|Vastly improved Javascript indentation and syntax support in Vim. |
| 1,689 ★ |[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)|CoffeeScript support for vim |
| 1,530 ★ |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](vundle_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| 1,513 ★ |[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) [:page_facing_up:](vundle_plugins/ctrlp.vim)|Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder. |
| 1,465 ★ |[vim-ruby](https://github.com/vim-ruby/vim-ruby)|Vim/Ruby Configuration Files |
| 1,351 ★ |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](vundle_plugins/tabular.vim)|Vim script for text filtering and alignment |
| 1,324 ★ |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](vundle_plugins/vim-startify.vim)|The fancy start screen for Vim. |
| 1,271 ★ |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](vundle_plugins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| 1,261 ★ |[ag.vim](https://github.com/rking/ag.vim) [:page_facing_up:](vundle_plugins/ag.vim)|Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' |
| 1,217 ★ |[gist-vim](https://github.com/mattn/gist-vim) [:page_facing_up:](vundle_plugins/gist-vim.vim)|vimscript for gist |
| 1,198 ★ |[vim-unimpaired](https://github.com/tpope/vim-unimpaired)|unimpaired.vim: pairs of handy bracket mappings |
| 1,195 ★ |[vimux](https://github.com/benmills/vimux) [:page_facing_up:](vundle_plugins/vimux.vim)|vim plugin to interact with tmux |
| 1,060 ★ |[delimitMate](https://github.com/Raimondi/delimitMate) [:page_facing_up:](vundle_plugins/delimitMate.vim)|Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc. |
| 939 ★ |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim) [:page_facing_up:](vundle_plugins/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| 919 ★ |[vim-signify](https://github.com/mhinz/vim-signify) [:page_facing_up:](vundle_plugins/vim-signify.vim)|Show a diff via Vim sign column. |
| 835 ★ |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| 786 ★ |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| 785 ★ |[neomake](https://github.com/benekastah/neomake) [:page_facing_up:](vundle_plugins/neomake.vim)|A plugin for asynchronous :make using Neovim's job-control functionality |
| 686 ★ |[html5.vim](https://github.com/othree/html5.vim)|HTML5 omnicomplete and syntax |
| 672 ★ |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](vundle_plugins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| 672 ★ |[vim-json](https://github.com/elzr/vim-json)|A better JSON for Vim: distinct highlighting of keywords vs values, JSON-specific (non-JS) warnings, quote concealing. Pathogen-friendly. |
| 634 ★ |[vim-jsx](https://github.com/mxw/vim-jsx) [:page_facing_up:](vundle_plugins/vim-jsx.vim)|React JSX syntax highlighting and indenting for vim. |
| 598 ★ |[vim-jade](https://github.com/digitaltoad/vim-jade)|Vim Pug (formerly Jade) template engine syntax highlighting and indention |
| 578 ★ |[vim-less](https://github.com/groenewege/vim-less)|vim syntax for LESS (dynamic CSS) |
| 562 ★ |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](vundle_plugins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| 562 ★ |[vim-haml](https://github.com/tpope/vim-haml)|Vim runtime files for Haml, Sass, and SCSS |
| 521 ★ |[undotree](https://github.com/mbbill/undotree)|The ultimate undo history visualizer for VIM |
| 518 ★ |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: helpers for UNIX |
| 517 ★ |[vim-endwise](https://github.com/tpope/vim-endwise)|endwise.vim: wisely add "end" in ruby, endfunction/endif/more in vim script, etc |
| 515 ★ |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| 478 ★ |[splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim) [:page_facing_up:](vundle_plugins/splitjoin.vim)|A vim plugin that simplifies the transition between multiline and single-line code |
| 444 ★ |[vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)|Refactoring tool for Ruby in vim! |
| 428 ★ |[nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)|A plugin of NERDTree showing git status |
| 369 ★ |[vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax)|Add CSS3 syntax support to vim's built-in `syntax/css.vim`. |
| 365 ★ |[swift.vim](https://github.com/keith/swift.vim)|Vim runtime files for Swift |
| 335 ★ |[webapi-vim](https://github.com/mattn/webapi-vim)|vim interface to Web API |
| 312 ★ |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](vundle_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| 293 ★ |[vim-cucumber](https://github.com/tpope/vim-cucumber)|Vim Cucumber runtime files |
| 287 ★ |[csv.vim](https://github.com/chrisbra/csv.vim)|A Filetype plugin for csv files |
| 281 ★ |[vim-bundler](https://github.com/tpope/vim-bundler)|bundler.vim: Lightweight support for Ruby's Bundler |
| 260 ★ |[vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)|A custom text object for selecting ruby blocks. |
| 248 ★ |[vim-stylus](https://github.com/wavded/vim-stylus)|Syntax Highlighting for Stylus |
| 242 ★ |[switch.vim](https://github.com/AndrewRadev/switch.vim) [:page_facing_up:](vundle_plugins/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| 239 ★ |[vim-markdown](https://github.com/gabrielelana/vim-markdown)|Markdown for Vim: a complete environment to create Markdown files with a syntax highlight that don't sucks! |
| 203 ★ |[vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)|A collection of themes for vim-airline |
| 198 ★ |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| 187 ★ |[vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)|Toggles between relative and absolute line numbers automatically |
| 182 ★ |[vim-rake](https://github.com/tpope/vim-rake)|rake.vim: it's like rails.vim without the rails |
| 172 ★ |[vim-turbux](https://github.com/jgdavey/vim-turbux) [:page_facing_up:](vundle_plugins/vim-turbux.vim)|Turbo Ruby testing with tmux |
| 159 ★ |[vim-hardtime](https://github.com/takac/vim-hardtime) [:page_facing_up:](vundle_plugins/vim-hardtime.vim)|Plugin to help you stop repeating the basic movement keys |
| 142 ★ |[open-browser.vim](https://github.com/tyru/open-browser.vim) [:page_facing_up:](vundle_plugins/open-browser.vim)|Open URI with your favorite browser from your most favorite editor |
| 112 ★ |[ZoomWin](https://github.com/vim-scripts/ZoomWin) [:page_facing_up:](vundle_plugins/ZoomWin.vim)|Zoom in/out  of windows (toggle between one window and multi-window) |
| 106 ★ |[matchit.zip](https://github.com/vim-scripts/matchit.zip)|extended % matching for HTML, LaTeX, and many other languages |
| 105 ★ |[ember.vim](https://github.com/dsawardekar/ember.vim) [:page_facing_up:](vundle_plugins/ember.vim)|Vim plugin for the Emberjs frontend framework |
| 101 ★ |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| 96 ★ |[colorv.vim](https://github.com/Rykka/colorv.vim) [:page_facing_up:](vundle_plugins/colorv.vim)|A powerful color tool in vim |
| 81 ★ |[vim-anzu](https://github.com/osyo-manga/vim-anzu) [:page_facing_up:](vundle_plugins/vim-anzu.vim)|Vim search status. |
| 76 ★ |[vim-marked](https://github.com/itspriddle/vim-marked)|Open the current Markdown buffer in Marked.app |
| 76 ★ |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| 70 ★ |[github-complete.vim](https://github.com/rhysd/github-complete.vim)|Vim input completion for GitHub |
| 60 ★ |[L9](https://github.com/vim-scripts/L9)|Vim-script library |
| 58 ★ |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](vundle_plugins/portkey.vim)|Navigate files at the speed of Vim. |
| 58 ★ |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](vundle_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| 51 ★ |[ListToggle](https://github.com/Valloric/ListToggle) [:page_facing_up:](vundle_plugins/ListToggle.vim)|A vim plugin for toggling the display of the quickfix list and the location-list. |
| 47 ★ |[textile.vim](https://github.com/timcharper/textile.vim)|Textile for VIM |
| 44 ★ |[Join](https://github.com/sk1418/Join)|a better :Join command in vim |
| 40 ★ |[QFEnter](https://github.com/yssl/QFEnter) [:page_facing_up:](vundle_plugins/QFEnter.vim)|Open a Quickfix item in a window you choose. (Vim plugin) |
| 20 ★ |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| 11 ★ |[vim-voogle](https://github.com/papanikge/vim-voogle) [:page_facing_up:](vundle_plugins/vim-voogle.vim)|google for the word under the cursor to a browser because 2013 |
| 8 ★ |[vim-tomdoc](https://github.com/jc00ke/vim-tomdoc)|Simple vim plugin that adds TomDoc templates to your code. |
| 7 ★ |[indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim) [:page_facing_up:](vundle_plugins/indenthtml.vim)|alternative html indent script |
| 7 ★ |[nginx.vim](https://github.com/mutewinter/nginx.vim)|Syntax highlighting for nginx.conf and related config files. |
| 3 ★ |[swap-parameters](https://github.com/mutewinter/swap-parameters)|Swap parameters of a function or a comma separated list with a single command. |
| 3 ★ |[GIFL](https://github.com/mutewinter/GIFL) [:page_facing_up:](vundle_plugins/GIFL.vim)|Add "wrap terms in google I'm feeling lucky url" à la Textmate |
| 2 ★ |[taskpaper.vim](https://github.com/mutewinter/taskpaper.vim)|This package contains a syntax file and a file-type plugin for the simple format used by the TaskPaper application. |
| 1 ★ |[tomdoc.vim](https://github.com/mutewinter/tomdoc.vim)|A simple syntax add-on for vim that highlights your TomDoc comments. |
| 1 ★ |[vim-tmux](https://github.com/mutewinter/vim-tmux)|http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?view=log |
| 1 ★ |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| 0 ★ |[vim-textobj-reactprop](https://github.com/justinj/vim-textobj-reactprop)|A vim text object for a React prop |
| 0 ★ |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |

I know.. a lot. But you won't even notice it rushing through all yours amazing files.

And Voila! Done.