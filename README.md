# ordinary-lisp


You can't highlight Lisp using it's keywords. It's wrong. Simply because Lisp is so ductile you're most likely not using it's own macros and functions after you've written your own.

Now Vim hasn't got SLIME. At least not really or at least not yet. So you can't have your editor colour your code after compiling it as an IDE would.

I once tried Emacs. I configured it, loaded SLIME. After I wrote 'mapcar' I found out I had to remap 'option + 3' to the character '#'. This obviously meant Emacs wasn't a text editor so much as an operating system based on a finger version of the game twister. But I don't want an operating system, I already have one called OSX.

I really want to type text. I want a typing machine. I want Vim. And my Lisp pretty.


## Syntax

So this syntax file will colour Lisp on VIM following some simple rules that every lisper would know. Funcall positions, keywords, and a couple other simple conventions.

It's weakness is that it is regex based. You should know not to expect much of it since if there's alpha quality software, this is most likely omega.

Below is some Lisp coloured with ordinary-lisp in the colorscheme Ola que tal!, by myself.


## Installation

If you're using Plug, write the following to your .vimrc.

Plug 'shapesncats/ordinary-lisp'

After that, either restart vim or type
:w | so % | PlugInstall
