" --------------------------------------------------------
" See https://github.com/NewMexicoKid/vimrc for the source
" --------------------------------------------------------
"
set nocompatible                " be iMproved, required
filetype off                    " required
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
let mapleader=","
set spell                       " Turn spelling on

" # Install Plugins
call plug#begin('~/.vim/plugged')

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" ## Themes
Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'alessandroyorba/despacio'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'
" https://github.com/morhetz/gruvbox/wiki/Installation
Plug 'morhetz/gruvbox'

" ## Markdown
Plug 'nelstrom/vim-markdown-folding'
Plug 'tpope/vim-markdown'

" ## Other Tools
" Plug 'vim-airline/vim-airline'	" Airline bar
Plug 'https://github.com/sirtaj/vim-openscad'	" OpenSCAD syntax hilighting
Plug 'itchyny/lightline.vim' " from https://github.com/itchyny/lightline.vim
Plug 'scrooloose/syntastic'	" syntax info
Plug 'Raimondi/delimitmate'	" smart completion of delimiters
Plug 'vitalk/vim-simple-todo'
Plug 'reedes/vim-litecorrect' " autocorrect - https://github.com/reedes/vim-litecorrect

" Autosave taskpaper files                    
Plug 'vim-scripts/vim-auto-save' 
Plug 'djoshea/vim-autoread'      

" All of your Plugins must be added before the following line
call plug#end()
autocmd filetype taskpaper let g:auto_save = 1
autocmd filetype taskpaper :WatchForChanges!
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Put your non-Plugin stuff after this line
augroup litecorrect
  autocmd!
  autocmd FileType markdown,mkd,md call litecorrect#init()
augroup END

" # Plugin Settings
set laststatus=2		" Make airline status bar appear all the time
set foldenable			" Enable markdown folding
" let g:airline#extensions#wordcount#enabled = 1	"Show word count
" Get rid of pointless Airline separators because I don't want to install a
" patched font to make them look right
" let g:airline_left_sep=''
" let g:airline_right_sep=''
" let g:airline#extensions#wordcount#enabled = 1
" Remove existing autocommands to avoid duplicates
:autocmd!
" Force Airline to refresh after setup so settings work
" ":autocmd VimEnter * :AirlineRefresh

" # Color Scheme
syntax on
syntax enable			" I have no idea what this actually does
set background=dark
if !has('gui_running')
    set t_Co=256			" 256 colors, terrible for most themes, but best for Tomorrow-Night
    set guifont=Consolas:h12:cANSI
endif
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
" colorscheme Tomorrow-Night-Bright
" colorscheme OceanicNext
" let g:despacio_Campfire = 1
" colorscheme despacio
" colorscheme minimalist

" lightline with wordcount - https://github.com/itchyny/lightline.vim/issues/295
let g:lightline = {
      \ 'active': {
      \   'right': [ [ 'lineinfo' ], [ 'percent', 'wordcount' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'wordcount': 'WordCount',
      \ },
      \ }

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
" I no longer remember why I need this:
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Needed for my chromebook crouton instance
" map <C-A-w> <C-w>
map <C-e> <C-w>

" Wordcount function from Pingouin (https://nanowrimo.org/participants/pingouin)
function! WordCount()
let s:old_status = v:statusmsg
let position = getpos(".")
  exe ":silent normal g\<C-g>"
    let stat = v:statusmsg
      let s:word_count = 0
if stat != '--No lines in buffer--'
     let s:word_count = str2nr(split(v:statusmsg)[11])
         let v:statusmsg = s:old_status
    end
         call setpos('.', position)
    return s:word_count 
endfunction

" ---set statusline=   " clear the statusline for when vimrc is reloaded
" ---set statusline+=%-3.3n\                      " buffer number
" ---set statusline+=%f\                          " file name
" ---set statusline+=%h%m%r%w                     " flags
" ---set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
" ---set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
" ---set statusline+=%{&fileformat}]              " file format
" ---set statusline+=%10.10{WordCount()}w\     " wordcount
" ---set statusline+=%=                           " right align
" ---set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
"set statusline+=%b,0x%-8B\                   "
"current char
"set statusline+=%-14.(%l,%c%V%)\ %<%P        "
"offset
"set noruler         " 
"set laststatus=2    " show statusline
