let mapleader = ","
imap jj <Esc>
set clipboard=unnamed
call plug#begin()
" General
Plug 'tpope/vim-repeat'
Plug 'terryma/vim-multiple-cursors'
Plug 'Valloric/MatchTagAlways'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'https://github.com/janko/vim-test.git'
Plug 'https://github.com/benmills/vimux.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ddollar/nerdcommenter.git'
Plug 'https://github.com/w0rp/ale.git'
Plug 'mileszs/ack.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'tpope/vim-rhubarb'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/bronson/vim-trailing-whitespace.git'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'

Plug 'leafgarland/typescript-vim'
Plug 'itchyny/lightline.vim'
Plug 'balontomasz/vim-slim'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
" Frameworks, Languages
Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'slashmili/alchemist.vim'
Plug 'c-brenn/phoenix.vim'
" Other
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mattn/emmet-vim'

Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}

Plug 'tpope/vim-projectionist'
Plug 'jiangmiao/auto-pairs'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'https://github.com/tpope/vim-rails.git'
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:ale_fixers = ['prettier', 'eslint', 'rubocop']

let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {
      \ 'jsx': ['prettier', 'eslint'],
      \ 'ruby': ['rubocop']
      \ }

let g:ale_fix_on_save = 1
filetype plugin indent on

let test#strategy = "vimux"
" NERDTree
map <leader>n :NERDTreeToggle<cr>
map <space>ff :NERDTreeFind<cr>

" Fugutive
map <leader>gb :Gblame<cr>
map <leader>gs :Gstatus<cr>

" Ack
let g:ackprg = 'ag --vimgrep'
noremap <leader>f :Ack<space>

" Other
set nowrap
set ignorecase
set smartcase

set ts=2 sw=2
set expandtab

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

set relativenumber
set number
nore ; :
nore , ;
set noswapfile

:command WQ wq
:command Wq wq
:command Q q
set nobackup
set nowritebackup
set cursorline
highlight ColorColumn ctermbg=173
" let g:solarized_termtrans = 1
set background=dark
" colorscheme solarized
let g:dracula_colorterm = 0
colorscheme dracula
noremap <leader><leader> <c-^>
noremap <space>fw :FixWhitespace<cr>
let &colorcolumn=join(range(101,999),",")
let &colorcolumn="100,".join(range(400,999),",")
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_use_caching = 0
set wildmode=longest,list
:nnoremap <silent><expr> <space><cr> (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
let g:syntastic_check_on_open = 0
let g:syntastic_html_checkers=['feature']
set re=1
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
let g:syntastic_disabled_filetypes=['feature']
let $LANG = 'en'
set langmenu=none
set noswapfile
noremap <space>p obinding.pry<ESC>
noremap <space>o obyebug<ESC>
noremap <space>i odebugger<ESC>
noremap <space>cp :let @+ = expand("%")<cr>
noremap <space>cpa :let @+ = expand("%:p")<cr>
autocmd BufRead,BufNewFile * setlocal signcolumn=yes
autocmd FileType tagbar,nerdtree setlocal signcolumn=no
" map <leader>gO <Plug>GithubOpen
" map <leader>gC <Plug>GithubComment

filetype plugin on
let g:gist_open_browser_after_post = 1
let g:gist_detect_filetype = 1
let g:gist_post_private = 1
let g:gist_show_privates = 1

noremap <space>tr :RainbowParenthesesToggle<cr>
syntax on

com! FormatJSON %!python -m json.tool
com! FormatXML %!xmllint --format -
com! SplitLine :s/\s\+/\r/g | :nohls


let ruby_no_expensive=1

fun! JoinSpaceless()
  execute 'normal gJ'

  " Character under cursor is whitespace?
  if matchstr(getline('.'), '\%' . col('.') . 'c.') =~ '\s'
    " When remove it!
    execute 'normal dw'
  endif
endfun

nnoremap <Leader>J :call JoinSpaceless()<CR>
let g:mix_format_on_save = 1

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
nmap <space>fjs :!yarn lint --fix<CR>

command! ALEToggleFixer execute "let g:ale_fix_on_save = get(g:, 'ale_fix_on_save', 0) ? 0 : 1"
let g:SuperTabDefaultCompletionType = "<c-n>"

map <space>fi gg=G

" "Zoom" a split window into a tab and/or close it
nmap <space>zz :tabnew %<CR>
nmap <space>zx :tabclose<CR>

nmap <space>csd cs'"
nmap <space>css cs"'

" search and replace word
nnoremap <space>rw :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:closetag_filetypes = 'html,xhtml,phtml,markdown'
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'javascript.jsx' : 1,
    \ 'haml' : 1,
    \}

autocmd BufWritePost *.exs,*.ex silent :!mix format %
set termguicolors
xnoremap <leader>p "_dP

