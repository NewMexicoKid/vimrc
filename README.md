# vimrc
My .vimrc, modified from [WurdBendur](http://nanowrimo.org/participants/wurdbendur)'s: [vimrc](https://github.com/WurdBendur/vimrc/blob/master/.vimrc). See also [the NaperWriMo vim page](http://naperwrimo.org/vim).

[vim](http://vim.org) is a fantastic moded text editor. It can easily be used for writing fiction, especially when combined with [markdown](https://daringfireball.net/projects/markdown/) (a simple mark-up language) and [pandoc](http://pandoc.org) (a multi-platform tool that can be used to convert markdown text files into many different formats, including Microsoft Word, OpenOffice/LibreOffice odt, epub, etc).

## Prerequisites
* This vimrc uses the excellent, simple, fast [plug](https://github.com/junegunn/vim-plug) vim plugin manager. You will need to install this first (e.g., via 

    url -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

). Then when you bring up vim after installing the vimrc, do:


    :PlugInstall

This will install the plugins, including the Tomorrow Night colorscheme.

## References
* Be sure to see the wonderful [airline](https://github.com/vim-airline/vim-airline) status bar page--there are many, many configuration options. You can also do a **:help airline** when within vim to see the documentation.
