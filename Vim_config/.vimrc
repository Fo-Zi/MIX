set nocompatible
filetype off
			
"-----------------------Vundle installed plugins-----------------------"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("$HOME/.vim/bundle")
	Plugin 'VundleVim/Vundle.vim'

	Plugin 'ycm-core/YouCompleteMe'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'tpope/vim-surround'
	Plugin 'preservim/nerdcommenter'
	Plugin 'dense-analysis/ale'
	Plugin 'airblade/vim-gitgutter'

call vundle#end()            

filetype plugin indent on

"-----------------------Vim-plug installed plugins-----------------------"
call plug#begin('~/.vim/plugged')
	Plug 'preservim/NERDTree'
	Plug 'joshdick/onedark.vim',{'as':'onedark'}
call plug#end()

"-----------------------NERDTree & terminal Init-----------------------"
autocmd vimenter * below terminal
autocmd vimenter * resize 10

autocmd vimenter * NERDTree

"-----------------------Color setup-----------------------"
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"-----------------------Config-----------------------"
"Visual
syntax on
colorscheme onedark
set number

"Cursor related
set autoindent
set ruler
set showmatch
set scrolloff=5
set cursorline

"Searching related
set hlsearch
set incsearch
set ignorecase
set smartcase 

"Shortcuts
xnoremap p pgvy
