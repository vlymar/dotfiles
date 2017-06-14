" much stolen from https://github.com/IanConnolly/dotfiles

" Plans:
"
" TODO: FZF command for listing files different from master
" TODO: Dispatch command to only run focused specs
"
" Window management:
"   - easily resize windows (e.g., make a vsplit evenly split)
"   - figure out golden ratio stuff
"
" Autocompletion issues
"   - what is that autocomplete window that comes up with 'access' in it? Almost seems like method autocompletion
"
" Custom statusline
"   - lightline and tmuxline are a good place to start, but, it would be nice to:
"     a) configure a custom minimal statusline
"
" Plugins to investiagate:
"   - vim-sayonara -> 'sane window/buffer closing'
"   - vim-oblique ->  'improved /-search (including fuzzy searching)'
"   - deoplete -> 'better autocomplete'
"
" Weird Configurations
"   - set backspace=indent,eol,start   " why do i need this?
"
" runtime macros/matchit.vim " TODO: how is this installed?

" call plug#begin('~/.vim/plugged')

" Vim layout + window related fun
" Plug 'justinmk/vim-dirvish'     " faster/simpler directory browser (and read only)
" Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }    " View undo history as tree
" Plug 'junegunn/vim-peekaboo'     " preview registers
" Plug 'romainl/vim-qf'    " quickfix window improvements

" Search
" Plug 'mhinz/vim-grepper'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } | Plug 'junegunn/fzf.vim'

" Typing/Autocomplete support
" Plug 'benekastah/neomake'         " Neovim async syntax checker
"Plug 'jiangmiao/auto-pairs'       " Automatically pair quotes, braces etc.
" Plug 'tpope/vim-endwise'          " Insert 'end' in ruby as smartly as braces
" Plug 'ajh17/VimCompletesMe'       " Super lightweight smart-tab for ins-completion
" Plug 'unblevable/quick-scope'     " highlight in-line f/F/t/T motions

" Movement/Text-alteration
" Plug 'tpope/vim-surround'          " Easily deal with surrounding quotes
" Plug 'tpope/vim-commentary'        " Comment/uncomment textobjs
" Plug 'tpope/vim-unimpaired'        " Collection of paired commands
" Plug 'tpope/vim-repeat'            " repeat surround/comment/unimpaired actions

" Text objs
" Plug 'wellle/targets.vim'          " New text objs
" Plug 'kana/vim-textobj-user' | Plug 'tek/vim-textobj-ruby' | Plug 'whatyouhide/vim-textobj-erb'

" Integrations
" Plug 'tpope/vim-fugitive'        " Git command wrappers
" Plug 'junegunn/gv.vim'           " Git commit browser
" Plug 'airblade/vim-gitgutter'    " Show git diff icons in gutter
" Plug 'tpope/vim-rails'           " Helpful rails related shortcuts
" Plug 'tpope/vim-rake'            " The general ruby bits of vim-rails
" Plug 'tpope/vim-bundler'         " 
" Plug 'tmux-plugins/vim-tmux'     " config syntax highlighting and manfile linking
" Plug 'tpope/vim-dispatch'        " Async builds

" Colors
" Plug 'junegunn/seoul256.vim'
" Plug 'bcicen/vim-vice'

" Other
" Plug 'vimwiki/vimwiki'

" Languages
" Plug 'kchmck/vim-coffee-script'
" Plug 'othree/html5.vim'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'vim-ruby/vim-ruby'
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
" Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" call plug#end()

filetype plugin indent on
" 
" Vim Config ###########################################
let mapleader="\<Space>"    " Space for leader is so satisfying
syntax on
" 
" Colors ###
" set termguicolors

" let g:seoul256_background = 235 " extra dark bg
" color seoul256
" color vice

" make vert splitbar invisible (same color as bg). 
" numline/gitgutter is enough to see split
" highlight VertSplit ctermbg=235 guibg=#333232
" highlight VertSplit ctermfg=235 guifg=#333232

" Tabs
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
" 
" Status line behaviour
set noshowcmd     " when selecting regions, dont show selection info in status line
set laststatus=2  " show status line always

set shiftround            " round indentation ops like <> to multiples of shiftwidth
set whichwrap+=<,>,h,l    " 'h' and 'l' will wrap around lines

" Gutter number
set number                " add numberline
set norelativenumber    
set nocursorline
" 
" File-system
set autoread
set noswapfile
set nowritebackup
set nrformats-=octal

" Search
set hlsearch
set incsearch
set ignorecase

" Terminal errors
set noerrorbells
set visualbell

" Key timeouts
set tm=500
set ttimeoutlen=50
" 
" Split opening positions
set splitright
set splitbelow

" Screen scrolling behaviour
set scrolloff=10                    " keep cursor relatively centered
set sidescrolloff=10

" Tagfile
set tags=./.tags;

" Showing invisible characters
set listchars=tab:»\ ,extends:›,trail:⋅
set fillchars=stlnc:\- " fill chars for statusline
set showbreak=›››
set list
" 
" Command tab-completion
set wildmenu             " command auto-completion
set wildmode=list:longest,full

" Misc
set virtualedit=block        " allow block selection even where there arent characters
set complete+=kspell         " TODO whats this
set hidden                   " allow hidden buffers to stay loaded
set completeopt=menu,menuone " Don't show scratch window " TODO whats this
set switchbuf=useopen        " when switching buffers, switch to open window that contains buffer
set updatetime=750
set lazyredraw               " dont redraw screen when executing untyped commands (like macros)


" " Helper Functions ###############################
" function! PluginLoaded(plugin)
"   if a:plugin == "vim-plug"
"     return exists("$HOME/.vim/autoload/plug.vim")
"   else
"     return &rtp =~ a:plugin
"   endif
" endfunction
" 
" function! NumberToggle()
"   if (&relativenumber == 1)
"     set nocursorline
"     set norelativenumber
"     set number
"   else
"     set nonumber
"     set relativenumber
"     set cursorline
"   endif
" endfunction
" 
" function! GenerateSnapshot()
"   " TODO: Template this
"   let directory = expand('~/dotfiles/snapshots')
"   call system('mkdir -p ' . directory)
"   let date = strftime("%Y-%m-%d")
"   let new_count = substitute(substitute(system('ls ' . directory . ' | grep ' . date . ' | wc -l'), '[^0-9]*', '', ''), '\v\n', '', '') + 1
"   let file_name = directory . '/' . date . '-' . new_count . '.sh'
" 
"   execute 'PlugSnapshot ' . file_name
" endfunction
" 
" function! s:try(cmd, default)
"   if exists(':' . a:cmd) && !v:count
"     let tick = b:changedtick
"     execute a:cmd
"     if tick == b:changedtick
"       execute join(['normal!', a:default])
"     endif
"   else
"     execute join(['normal! ', v:count, a:default], '')
"   endif
" endfunction
" 
" function! Help()
"   if &buftype == 'help'
"     wincmd T
"     nnoremap <buffer> q :q<CR>
"   endif
" endfunction
" 
" function! WriteQAFile(host, target, number)
"   let file = bufname('%')
"   execute "write scp://deploy@" . a:host . "//var/www/apps/" . a:target . "/" . a:number . "/current/" . file
" endfunction

" " Plugin Related Config ###################################
" " Neomake
" let g:neomake_ruby_enabled_makers = ['mri']
" let g:neomake_open_list           = 0

" " Neomake errors
" if PluginLoaded('neomake')
"   nnoremap <Leader>e :Neomake<CR>:lopen<CR>
" 
"   " don't want to do autocmd unless its async
"   if has('nvim')
"     augroup Neomake
"       autocmd!
"       autocmd BufWritePost *.rb Neomake
"     augroup END
"   endif
" endif
" 
" " TODO: which plugin? (and what is this)
" let g:qf_mapping_ack_style = 1
" 
" " Quickscope
" " Only enable quick-scope after f/F/t/T
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" 
" " Autopairs
" " AutoPairs binds to Meta by default for whatever reason, we don't want that on OSX
" let g:AutoPairsShortcutFastWrap = '<C-e>'
" 
" 
" " Vimux
" " Global variable for Vimux test pane
" let g:vs_open = 0
" 
" " Undotree
" if PluginLoaded('undotree')
"   nnoremap <Leader>u :UndotreeToggle<CR>
" endif
" 
" " Easily make changes to vimrc
" if PluginLoaded('vim-plug')
"   nnoremap <Leader>R :mapclear!<CR>:so ~/.vimrc<CR>:PlugInstall<CR>
"   nnoremap <Leader>U :PlugUpdate<CR>:PlugClean<CR>
"   nnoremap <Leader>S :call GenerateSnapshot()<CR>
" else
"   nnoremap <Leader>R :mapclear!<CR>:so ~/.vimrc<CR>
" endif
" 
" " FZF
" if PluginLoaded('fzf')
"   nnoremap <C-p> :FZF<CR>
" endif
" 
" " For fuzzy finding thru buffers
" if PluginLoaded('fzf.vim')
"   nnoremap <Leader><Tab> :Buffers<CR>
" endif
" 
" " vim-fugitive
" if PluginLoaded('fugitive')
"   nnoremap <Leader>gb :Gblame<CR>
"   nnoremap <Leader>gs :Gstatus<CR>
"   nnoremap <Leader>gd :Gdiff<CR>
"   nnoremap <Leader>gc :Gcommit<CR>
"   nnoremap <Leader>gp :Gpush<CR>
"   nnoremap <Leader>gl :Glog<CR>:copen<CR>
" endif
" 
" if PluginLoaded('fugitive') && PluginLoaded('fzf.vim')
"   nnoremap <Leader>gf :GitFiles<CR>
"   nnoremap <Leader>gh :BCommits<CR>
" endif
" 
" " Syntastic
" if PluginLoaded('syntastic')
"   nnoremap <Leader>e :SyntasticCheck<CR>:Errors<CR>
" endif
" 
" " Vim-Surround
" if PluginLoaded('vim-surround')
"  " The 'y' mnemonic doesn't really make much sense
"  " and we can use the default `s` bind with `cl`
"  nmap s  <Plug>Ysurround
"  nmap S  <Plug>YSurround
"  nmap ss <Plug>Yssurround
"  nmap SS <Plug>YSsurround
" endif
" 
" " vim-ruby
" " TODO: update for chruby
" let g:ruby_path = system('rvm current')
" let ruby_operators = 1
" let ruby_no_expensive = 1  " they promised speed
" 
" " vim-peekaboo
" if PluginLoaded('vim-peekaboo')
"   " Default peekaboo window
"   " let g:peekaboo_window = 'vertical botright 30new'
" 
"   " Delay opening of peekaboo window (in ms. default: 0)
"   let g:peekaboo_delay = 250
"   "
"   " Compact display; do not display the names of the register groups
"   " let g:peekaboo_compact = 0
" " "
" endif
" 
" " vim-racer
" if PluginLoaded('vim-racer')
"  let g:racer_cmd = "/Users/victor/.cargo/bin/racer"
"  let $RUST_SRC_PATH="/Users/victor/code/rust/src"
" endif
" 
" if PluginLoaded('vim-dispatch')
"   nnoremap <leader>m :Dispatch<CR>
"   nnoremap <leader>M :Dispatch!<CR>
" 
"   autocmd FileType rust let b:dispatch = 'cargo build'
"   autocmd FileType ruby let b:dispatch = 'bundle exec rspec %'
" 
"   if executable('grip')
"     autocmd FileType markdown let b:dispatch = 'grip %'
"   endif
" endif


" Custom Keybinds #################################
" exit insert mode with jk
inoremap jk <Esc>

" god who uses this
map q: :q
nnoremap Q <NOP>

" Fingers are already there...
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

" Trim trailing whitespace
nnoremap <Leader>tw :call TrimWhitespace()<CR>

" Toggle between relative and static numbering
nnoremap <Leader>nu :call NumberToggle()<CR>

" Edit the vimrc in a split
command! EV vsplit ~/.vimrc
command! ES split ~/.vimrc

" TODO: what does this do
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <Leader>- :edit %%

" copy and paste
xnoremap <Leader>c "*y
nnoremap <Leader>p "0p
nnoremap <Leader>P "0P

set pastetoggle=<F2>
" Don't allow paste mode in normal/visual modes
nnoremap <F2> <NOP>
xnoremap <F2> <NOP>

" close current buf and open prev buf in its place
nmap <leader>d :bp \| :bd #<CR>

" easily get rid of search highlights
noremap <Esc> :noh<CR><Esc>

" Switch to last active buffer
noremap <Leader><Space> :buffer #<CR>

" Quick jump to buffers
nnoremap <Leader>b :ls<cr>:b<space>

" Quick Esc
inoremap ;; <Esc>:noh<CR>

" Toggle case
nnoremap <Leader>tc g~iw

" More logical
map Y y$

" Use matchit more (unbinds <C-i> as they're the same key)
nmap <Tab> %
xmap <Tab> %

" Be able to jump 'in' jumplist after remap ^
nnoremap <Leader>i <C-i>
" Bind <C-o> for symmetry
nnoremap <Leader>o <C-o>

" Move up and down visual lines, not real (but not when given a count)
nnoremap <expr> j v:count ? 'j' : 'gj'
nnoremap <expr> k v:count ? 'k' : 'gk'

" Select last edited/pasted text
nnoremap gV `[v`]

" Select current line char-wise
nnoremap vv ^vg_

" Buhbye accidental help
nnoremap <F1> :nohl<CR><Esc>
xnoremap <F1> :nohl<CR><Esc>
inoremap <F1> :nohl<CR><Esc>

" Change, highlight, repeat
nnoremap ,, *``cgn

" replace all occurences of current word
nnoremap <Leader>ra :%s/\<<C-r>=expand('<cword>')<CR>\>/

" replace occurrences inside this block
nnoremap <Leader>ri :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/

" Because un-selecting is dumb
xnoremap > >gv
xnoremap < <gv

nnoremap <Leader>l :echo line('.') . "/" . line('$')<CR>


" " Kill arrows
" for modeprefix in ['i', 'n', 'v']
"   for arrowkey in ['<Up>', '<Down>', '<Left>', '<Right>']
"     execute modeprefix . "noremap " . arrowkey . " <Nop>"
"   endfor
" endfor
" 
" nnoremap <Leader>bqa :call WriteQAFile("olap-qa01.lo", "besar-qa", "10")<CR>
" nnoremap <Leader>qa :call WriteQAFile(g:default_qa_host, g:default_qa_target, g:default_qa_number)<CR>

" " Custom Config settings ##########################
" " remote qa editing woo!
" let g:default_qa_host = "qa-host02.lo"
" let g:default_qa_target = "qa"
" let g:default_qa_number = "10"
" 
" " abbreviations for the lazy
" iabbr dpw DataPipe::Worker
" iabbr dpjr DataPipe::Jenkins::Recovery
" iabbr dpc DataPipe::ConfigParser
" iabbr dpdg DataPipe::DependencyGraph
" 
" " Integrations #############################
" if executable('ag')
"   " Integrate with Ag
"   set grepprg=ag\ --nogroup\ --nocolor\ --ignore-case\ --column\ --vimgrep
"   set grepformat=%f:%l:%c:%m,%f:%l:%m
" 
"   if PluginLoaded('vim-grepper')
"     nmap gs  <plug>(GrepperOperator)
"     xmap gs  <plug>(GrepperOperator)
" 
"     nnoremap <Leader>s :Grepper -noswitch -tool ag -query '\b<C-r><C-w>\b'<CR>
"     nnoremap <Leader>ag :Grepper -tool ag -query ''<Left>
"     command! -nargs=* Ag Grepper -tool ag -query <args>
"     command! Grep Grepper -tool ag
"     command! GRep Grep
"   endif
" endif
" 
" " Otherwise vim will get nasty escape codes
" if has('mac') && ($TERM == 'xterm-256color' || $TERM == 'screen-256color')
"   map <Esc>OP <F1>
"   map <Esc>OQ <F2>
"   map <Esc>OR <F3>
"   map <Esc>OS <F4>
"   map <Esc>[16~ <F5>
"   map <Esc>[17~ <F6>
"   map <Esc>[18~ <F7>
"   map <Esc>[19~ <F8>
"   map <Esc>[20~ <F9>
"   map <Esc>[21~ <F10>
"   map <Esc>[23~ <F11>
"   map <Esc>[24~ <F12>
" endif
" 
" " Custom Command Definitions ####################
" " Debug colours
" command! SS echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" 
" " Because shift is hard to let go of okay
" command! Wq wq
" command! WQ wq
" command! W w
" command! Q q
" 
" " Autocmds ######################################
" augroup NoPaste
"   autocmd!
"   autocmd InsertLeave * set nopaste
" augroup END
" 
" augroup FileTypeSettings
"   autocmd!
"   autocmd FileType html setlocal ts=2 sw=2 expandtab
"   autocmd FileType ruby setlocal ts=2 sw=2 expandtab
"   autocmd FileType vim setlocal ts=2 sw=2 expandtab keywordprg=:help
"   autocmd FileType haskell setlocal ts=2 sw=2 expandtab
"   autocmd FileType python setlocal ts=4 sw=4 expandtab
"   autocmd FileType javascript setlocal ts=2 sw=2 expandtab
"   autocmd FileType coffee setlocal ts=2 sw=2 expandtab
"   autocmd FileType sh,zsh setlocal ts=2 sw=2 expandtab
"   autocmd FileType go setlocal ts=4 sw=4 noexpandtab
"   autocmd FileType rust setlocal ts=4 sw=4 expandtab makeprg=cargo
"   "autocmd BufEnter *.rs iunmap ;;
"   "autocmd BufLeave *.rs inoremap ;; <Esc>:noh<CR>
" 
"   " Who uses modula2???
"   autocmd BufNewFile,BufRead *.md set filetype=markdown
"   autocmd BufNewFile,BufRead *.css set filetype=scss
"   autocmd BufNewFile,BufRead Cargo.toml,Cargo.lock set filetype=rust
"   autocmd BufNewFile,BufRead *.q set filetype=sql " Hive
" 
"   " spell check git commit messages and markdown files
"   autocmd FileType markdown setlocal spell
"   autocmd FileType gitcommit setlocal spell
"   autocmd FileType text setlocal spell
" augroup END
" 
" augroup VimHelp
"   autocmd!
"   autocmd BufEnter *.txt call Help()
" augroup END
" 
" augroup Tests
"   autocmd!
" " run spring rspec for current_file:cursor_line_num
"   autocmd FileType ruby nnoremap <Leader>tt :execute "!bundle exec spring rspec " . expand('%') . ':' . line('.')<CR>
" 
"   autocmd FileType go nnoremap <Leader>tt :GoTest<CR>
" augroup END
" 
" augroup LongLines
"   autocmd!
"   autocmd BufEnter *.rb highlight OverLength ctermbg=darkgrey guibg=#111111
"   autocmd BufEnter *.rb match OverLength /\%80v.*/
" augroup END

" " Just killmyself
" noremap h <NOP>
" noremap j <NOP>
" noremap k <NOP>
" noremap l <NOP>



