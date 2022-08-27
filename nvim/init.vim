source $HOME/.config/nvim/vim-plug/plugins.vim

" Set leader key
let mapleader =" "

set encoding=utf-8
set clipboard=unnamed
set ff=unix

" Theme
syntax enable
set background=dark
colorscheme gruvbox

" Set split
set splitbelow splitright

" turn relative line numbers on
set relativenumber
set nu rnu
" No hightlight after search
set nohlsearch
" Scroll off when lines to top or bottom
set scrolloff=8
" Sign column
set signcolumn=yes:1
" Use tab for trigger completion with characters ahead and navigate.
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Insert <tab> when previous text is space, refresh completion if not.
  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

  " Make <tab> used for trigger completion, completion confirm, snippet expand and jump like VSCode.
  inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackSpace() ? "\<TAB>" :
      \ coc#refresh()

function! CheckBackSpace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Setup Prettier command
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" Folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" autocmd BufReadPost,FileReadPost * normal zR

"" Map phím tắt Ctrl + P
nnoremap <silent> <C-p> :FZF<CR>

"" Tìm file trong project, nhưng bỏ mấy thư mục như node_modules ra, để tìm nhẹ hơn.
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path '**/node_modules/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
