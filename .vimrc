" # Basic Settings
set nocompatible				" vim-specific settings, non-vi-compatible
set backspace=indent,eol,start 	" Allow backspace in insert mode
"set number						" Line numbers
set hidden						" Allow hidden buffers
filetype plugin indent on		" Enable file type detection and do language-dependent indenting.
set history=100					" Default = 8
nnoremap ; :
set tabstop=4					" Default tabs are too big
" set wrap						" Turn on word wrapping
set ai                          " autoindent
set linebreak					" Only wrap at sensible places
set nolist						" list disables linebreak
set textwidth=0					" prevent Vim from automatically inserting line breaks
set wrapmargin=0
set formatoptions-=t			" Don't change wrapping on existing lines
set formatoptions+=l			" Black magic
" to insert a real tab, use <Ctrl>-V <Tab>; this command expands tabs to spaces
set expandtab 
" shiftwidth
set shiftwidth=4
set spell                       " Turn spelling on

" # Install Plugins
call plug#begin('~/.vim/plugged')
	" ## Themes
	Plug 'https://github.com/chriskempson/vim-tomorrow-theme'
	Plug 'vim-airline/vim-airline-themes'
    Plug 'alessandroyorba/despacio'

	" ## Markdown
	Plug 'nelstrom/vim-markdown-folding'
	Plug 'tpope/vim-markdown'

	" ## Other Tools
	Plug 'vim-airline/vim-airline'					" Airline bar
	Plug 'scrooloose/syntastic'						" syntax info
	Plug 'Raimondi/delimitmate'						" smart completion of delimiters
call plug#end()

" # Plugin Settings
set laststatus=2		" Make airline status bar appear all the time
set foldenable			" Enable markdown folding
let g:airline#extensions#wordcount#enabled = 1	"Show word count
" Get rid of pointless Airline separators because I don't want to install a
" patched font to make them look right
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#wordcount#enabled = 1
" Remove existing autocommands to avoid duplicates
:autocmd!
" Force Airline to refresh after setup so settings work
:autocmd VimEnter * :AirlineRefresh

" # Color Scheme
syntax on
syntax enable			" I have no idea what this actually does
set background=dark
" set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Night
" colorscheme Tomorrow-Night-Bright
let g:despacio_Campfire = 1
colorscheme despacio

" function MarkdownLevel()
"    let h = matchstr(getline(v:lnum), '^#\+') 
"    if empty(h) 
"       return "=" 
"    else 
"       return ">" . len(h) 
"    endif 
" endfunction
" au BufEnter *.md setlocal foldexpr=MarkdownLevel()
" au BufEnter *.md setlocal foldmethod=expr
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
