# vimrc
My .vimrc, modified from [WurdBendur](http://nanowrimo.org/participants/wurdbendur)'s: [vimrc](https://github.com/WurdBendur/vimrc/blob/master/.vimrc). See also [the NaperWriMo vim page](http://naperwrimo.org/vim) that collects many tips for vim for those using it for [National Novel Writing Month](http://nanowrimo.org), the free, international, annual event designed to motivate writers to complete a 50,000+ word novel in just 30 days in November.

[vim](http://vim.org) is a fantastic moded text editor. In addition to being the best editor for editing code, it can easily also be used for writing notes, prose or fiction, especially when combined with [markdown](https://daringfireball.net/projects/markdown/) (a simple mark-up language) and [pandoc](http://pandoc.org) (a multi-platform tool that can be used to convert markdown text files into many different formats, including Microsoft Word, OpenOffice/LibreOffice odt, epub, etc).

I use this under ubuntu Linux and on Windows 7 via [cygwin](https://www.cygwin.com/).

## Plugins I currently use

### Themes
* [Plug 'https://github.com/chriskempson/vim-tomorrow-theme'](https://github.com/chriskempson/vim-tomorrow-theme)
* [Plug 'vim-airline/vim-airline-themes'](https://github.com/vim-airline/vim-airline-themes)

### Markdown
* [Plug 'nelstrom/vim-markdown-folding'](https://github.com/nelstrom/vim-markdown-folding)
* [Plug 'tpope/vim-markdown'](https://github.com/tpope/vim-markdown)

### Other Tools
* [Plug 'vim-airline/vim-airline'](https://github.com/vim-airline/vim-airline)	- Airline bar
* [Plug 'scrooloose/syntastic'](https://github.com/scrooloose/syntastic) - syntax info
* [Plug 'Raimondi/delimitmate'](https://github.com/Raimondi/delimitmate) - smart completion of delimiters

## Prerequisites
This vimrc uses the excellent, simple, fast [plug](https://github.com/junegunn/vim-plug) vim plugin manager. You will need to install this first (e.g., via:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Then when you bring up vim after installing the vimrc, do:


    :PlugInstall

This will install the plugins, including the Tomorrow Night colorscheme.

## References
Be sure to see the wonderful [airline](https://github.com/vim-airline/vim-airline) status bar page--there are many, many configuration options. You can also do a **:help airline** when within vim to see the documentation.
