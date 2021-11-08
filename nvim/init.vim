"general
filetype plugin on
set runtimepath^=~/.config/nvim
let &packpath = &runtimepath
set number
set relativenumber
set cursorline
syntax enable
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set showmatch
set wildmenu
set updatetime=100

" plug
call plug#begin()
    Plug 'https://github.com/tpope/vim-fugitive'
    Plug 'https://github.com/lifepillar/vim-wwdc17-theme'
    Plug 'jiangmiao/auto-pairs'
    Plug 'https://github.com/itchyny/lightline.vim'
    Plug 'dense-analysis/ale'
    Plug 'https://github.com/airblade/vim-gitgutter/'
    Plug 'https://github.com/sirver/UltiSnips'
call plug#end()

"ale
let g:ale_completion_enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_cursor_detail = 1
let g:ale_detail_to_floating_preview = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_completion_autoimport = 1
let g:ale_linters = {
\ 'go': ['gopls'],
\ 'javascript': ['tsserver'],
\ 'powershell': ['psscriptanalyzer'],
\ }

"gitgutter
let g:gitgutter_grep=''

"style
set t_Co=256
set termguicolors
let g:wwdc17_frame_color = 10
colorscheme wwdc17

"lightline
let g:lightline = {
\ 'colorscheme':  'ayu_light',
\ }

"UltiSnips
let g:UltiSnipsExpandTrigger = '<c-space>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'

"keymappings

"leader
let mapleader=","

"save
nmap <C-s> :write <CR>
imap <C-s> <Esc>:write<CR>a
nmap qw :write<CR>:wincmd q<CR>

" windows
nmap <C-Up>    :wincmd k<CR>
nmap <C-Down>  :wincmd j<CR>
nmap <C-Left>  :wincmd h<CR>
nmap <C-Right> :wincmd l<CR>
nmap qq :wincmd q<CR>
nmap qi :q!<CR>
nmap +     :wincmd +<CR>
nmap -     :wincmd -<CR>
nmap <     :wincmd <<CR>
nmap >     :wincmd ><CR>

"semicolon
nmap ll $a;<Esc>

" tabs
nmap t<Up>          :tabnew<CR>
nmap t<Down>        :tabclose<CR>
nmap t<Left>        :tabprevious<CR>
nmap t<Right>       :tabnext<CR>
nmap <S-t><Left>    :tabmove -1<CR>
nmap <S-t><Right>   :tabmove +1<CR>
nmap <C-t><Up>      :tabnew<CR>
nmap <C-t><Down>    :tabclose<CR>
nmap <C-t><Left>    :tabprevious<CR>
nmap <C-t><Right>   :tabnext<C-t><CR>
nmap <C-S-t><Left>  :tabmove -1<CR>
nmap <C-S-t><Right> :tabmove +1<CR>
imap <C-t><Up>      <Esc>:tabnew<CR>
imap <C-t><Down>    <Esc>:tabclose<CR>
imap <C-t><Left>    <Esc>:tabprevious<CR>
imap <C-t><Right>   <Esc>:tabnext<C-t><CR>
imap <C-S-t><Left>  <Esc>:tabmove -1<CR>
imap <C-S-t><Right> <Esc>:tabmove +1<CR>

" search
nnoremap <leader><space> :nohlsearch<CR>

" terminal
tnoremap <Esc><Esc> <C-\><C-n>
