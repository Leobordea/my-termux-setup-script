" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" Color scheme
	" Gruvbox theme
	Plug 'gruvbox-community/gruvbox'
	" Molokai Color Scheme for Vim
	Plug 'tomasr/molokai'
	" A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals
	Plug 'joshdick/onedark.vim'
	" This color scheme is based on Monokai Pro, the contrast is adjusted to be a bit lower while keeping the colors vivid enough.
	Plug 'sainnhe/sonokai'


	" Distraction-free writing in Vim.
	Plug 'junegunn/goyo.vim'

	" Things you can do with fzf and Vim.
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" File Explorer
	Plug 'scrooloose/NERDTree'

	" Better Syntax Support
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Auto pairs for '(' '[' '{'
	Plug 'jiangmiao/auto-pairs'

	" Stable version of coc
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Status line
	Plug 'itchyny/lightline.vim'
	
	" Visually displaying indent levels
	Plug 'nathanaelkane/vim-indent-guides'
	" Defines a new text object representing lines of code at the same indent level.
	Plug 'michaeljsmith/vim-indent-object'
	" A nicer Python indentation style for vim
	Plug 'Vimjas/vim-python-pep8-indent'

	" EditorConfig plugin for Vim
	Plug 'editorconfig/editorconfig-vim'

	"  Comment stuff out
	Plug 'tpope/vim-commentary'

	" A Git wrapper so awesome, it should be illegal
	Plug 'tpope/vim-fugitive'

	" Markdown Vim Mode
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'

	" Parenthesizing made simple
	Plug 'tpope/vim-surround'


	call plug#end()

