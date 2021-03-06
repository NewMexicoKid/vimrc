# vimrc
This is my .vimrc, modified from [WurdBendur](http://nanowrimo.org/participants/wurdbendur)'s: [vimrc](https://github.com/WurdBendur/vimrc/blob/master/.vimrc). See also [the NaperWriMo vim page](http://naperwrimo.org/vim) that collects many tips for vim for those using it for [National Novel Writing Month](http://nanowrimo.org), the free, international, annual event designed to motivate writers to complete a 50,000+ word novel in just 30 days in November.

[vim](http://vim.org) is a fantastic moded text editor. In addition to being the best editor for editing code, it can easily also be used for writing notes, prose or fiction, especially when combined with [markdown](https://daringfireball.net/projects/markdown/) (a simple mark-up language) and [pandoc](http://pandoc.org) (a multi-platform tool that can be used to convert markdown text files into many different formats, including Microsoft Word, OpenOffice/LibreOffice odt, epub, etc).

I use this under ubuntu Linux (including on ChromeOS) and on Windows 7 via [cygwin](https://www.cygwin.com/).

## Plugins I currently use

### Themes
* [Plug 'https://github.com/chriskempson/vim-tomorrow-theme'](https://github.com/chriskempson/vim-tomorrow-theme)
* ~~[Plug 'vim-airline/vim-airline-themes'](https://github.com/vim-airline/vim-airline-themes)~~
* [Plug 'alessandroyorba/despacio'](https://github.com/AlessandroYorba/Despacio)
    - I started out with the tomorrow theme, but I like despacio. I'll probably end up using both (depending on my mood)
* See [this great overview of popular vim themes](https://blog.pabuisson.com/2018/06/favorite-color-schemes-modern-vim-neovim/)
* [Plug 'morhetz/gruvbox'](https://github.com/morhetz/gruvbox/wiki/Installation) - my current favorite theme (as of 2019-01-09), using 
    - let g:gruvbox_italic=1
    - let g:gruvbox_contrast_dark='hard'
    - colorscheme gruvbox

### Markdown
* [Plug 'nelstrom/vim-markdown-folding'](https://github.com/nelstrom/vim-markdown-folding)
* [Plug 'tpope/vim-markdown'](https://github.com/tpope/vim-markdown)

### Other Tools
* ~~[Plug 'vim-airline/vim-airline'](https://github.com/vim-airline/vim-airline)	- Airline bar~~
* [Plug 'itchyny/lightline.vim](from https://github.com/itchyny/lightline.vim) - status bar (lightweight) - *see [the recommendations here for how to put wordcount into the status line](https://github.com/itchyny/lightline.vim/issues/295)*
* [Plug reeds/vim-litecorrect](https://github.com/reedes/vim-litecorrect) - lightweight spelling correction
* [Plug 'scrooloose/syntastic'](https://github.com/scrooloose/syntastic) - syntax info
* [Plug 'Raimondi/delimitmate'](https://github.com/Raimondi/delimitmate) - smart completion of delimiters
* [Plug 'vitalk/vim-simple-todo'](https://github.com/vitalk/vim-simple-todo) - simple todo

## Prerequisites
This vimrc uses the excellent, simple, fast [plug](https://github.com/junegunn/vim-plug) vim plugin manager. You will need to install this first (e.g., via:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Then when you bring up vim after installing the vimrc, do:

    :PlugInstall

This will install the plugins, including the Tomorrow Night colorscheme.

## References
Be sure to see the wonderful [airline](https://github.com/vim-airline/vim-airline) status bar page--there are many, many configuration options. You can also do a **:help airline** when within vim to see the documentation.

## Use Windows?
* If you happen to have to use Windows, [this guide is very helpful for making vim plugins work there](https://www.vim.org/ugrankar.pdf)
* Note: I had to [use vundle](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows) as described in the guide. Didn't try to make things work with Plug since I was in a hurry. Went through the [vundle quick start](https://github.com/VundleVim/Vundle.vim#quick-start) after doing the steps in the guide above bullet (installed vim in my Windows users directory, cleaned up vimfiles, installed [curl](https://curl.haxx.se/download.html#Win64), tested it with pathogen, etc). **Update**: Plug works fine! Just had to reboot before using.
* Note: if you have a .vimrc in your $HOME, gvim will use it ahead of a .gvimrc in that $HOME directory!
* Note: With Windows 10, I had to put plug.vim in ~/vimfiles/autoload, then everything magically worked (after installing git, making sure that the Path environment variable was updated with the path to git, and that curl.cmd worked)

