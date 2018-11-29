" vimify stuff
syntax on
set number
" colorscheme seoul256 
" colorscheme dracula
" colorscheme monokai 
" colorscheme apprentice
" colorscheme molokai
" colorscheme kolor
" colorscheme vice
" colorscheme herald
colorscheme gruvbox

set background=dark

let g:javascript_plugin_jsdoc = 1 " javacript syntax highlighting

" control p fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" change leader to comma
let mapleader = ","

function ToggleWrap()
  if (&wrap ==1)
    set nowrap
  else
    set wrap
  endif
endfunction

" toggle leader w to toggle text wrap
map <Leader>w :call ToggleWrap()<CR>

" comment is set to ctrl-/
map <C-_> <Leader>c<Space>

" pathogen plugins
execute pathogen#infect()

filetype plugin indent on
filetype plugin on

" NERDTree configuration
map <Leader>n :NERDTreeToggle<CR>
nnoremap <BS> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" white space stuff
set nowrap
set tabstop=2
set shiftwidth=2
set smartindent
set autoindent

" window stuff
set splitright

" Change split panes
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l
map <Leader>h <C-w>h

nnoremap <nowait> [ <C-w>h
map ] <C-w>l
nnoremap <S-[> <C-w>j
nnoremap <S-]> <C-w>k

" save to system every time for web pack dev server
set backupcopy=yes

" auto complete strings and objects
" inoremap <nowait> { {}<Left>
" inoremap <nowait> " ""<Left>
" inoremap <nowait> ' ''<Left>
" inoremap <nowait> ` ``<Left>
" inoremap <nowait> ( ()<Left>

" in navigation mode control up and down
nnoremap <C-Down> }
nnoremap <C-Up> {

" in insert mode control up and down 
inoremap <C-Down> <C-O>A
inoremap <C-Up> <C-O>I

" if nerdtree is the last buffer then close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" for lastline
set laststatus=2

" colors added for lastline
if !has('gui_running')
	set t_Co=256
endif

" remove insert mode text
set noshowmode

" let g:multi_cursor_use_default_mapping=0

" Default mapping
" let g:multi_cursor_start_word_key      = '<C-d>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

" allow space after nerd commenter comment
let g:NERDSpaceDelims = 1

" show hidden files in nerd tree
let NERDTreeShowHidden=1

" fix missing first letter on nerdtree
let NERDTreeNodeDelimiter = "\t"

" for the nerdtree git status
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" for ultisnips
set runtimepath+=~/.vim/ultisnips_rep

" added after youcompleteme to make backspacing work
set backspace=indent,eol,start


