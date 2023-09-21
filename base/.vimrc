"""" Core
" Note: some core configuration done by tpope/sensible.vim

" disable vi compatibility mode
set nocompatible

" tell vim it's OK to use 256 colors at the terminal
set t_Co=256

set termguicolors " note - this breaks non-true color terminals

" show matching brackets and parens
set showmatch

" do not make backup~ files
set nobackup
set nowritebackup

" show insert, replace, or visual mode in last line
set showmode

" show command in last line
set showcmd

set nowrap " don't wrap long lines

" turn on line numbers
set number  " leave off for now

" assumes fast connection
set ttyfast

" set leader to space
let mapleader = " "

" highlight the line the cursor is on
set cursorline

" jk to escape
:imap jk <Esc>


"""" VIMRC 

" Reload vimrc configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" Open vimrc in a split
nnoremap <Leader>vo :vsp $MYVIMRC<CR>


"""" Searching

" Highlight matches in search
set hlsearch

" Turn off search highlight when done
nnoremap <Leader><Space> :nohlsearch<CR>


"""" Plugins

packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})


if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Additional plugins here.
  call minpac#add('bling/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('junegunn/seoul256.vim')
  call minpac#add('w0rp/ale')


  call minpac#add('junegunn/fzf.vim')
endif

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()


"""" Theme

" Unified color scheme (default: dark)
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 234
colo seoul256


"""" FZF

" If installed using Homebrew
set rtp+=/usr/local/opt/fzf

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" local leader to backslash. (local leader is used for only specific file
" types)
" let maplocalleader = "\\"

