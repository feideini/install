Run

git clone https://github.com/feideini/install.git

then move

install-local-pre.pl
[sudo] install.pl
(no longer necessary) install-local-post.pl

to the home directory and run them from there.

**** Log <2018-10-26 Fri>
(1) make sure you specify the correct emacs directory

(2) all colour related lines in .emacs need to be commented out; use
M-x customize-themes instead, pick tango dark and save in .emacs using
M-x custom-theme-save

(3) vundle install: again, no problem by hand:

run

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

then run gvim and run :PluginInstall

(4) run after all is said and done

system "git config --global user.email \"sediomyle\@gmail.com\"";
system "git config --global user.name \"Stefan Lukits\"";

(this replaces install-local-post.pl)
**** Log earlier
(1) Why is there an emacs directory in feideini?

(2) Resolve the Xmodmap problem.

(3) Insert \n before final TODO in install-local-post.

(4) apt-get wine first because there is a font prompt, in install.pl

(5) create gpg directory and curl aws3.pem.enc from streetgreek

(6) Clean up the git install directory and use git clone in install.pl

(7) fix vundle installation issues, just follow computer.org
instructions (this isn't working as of <2018-07-22 Sun>)

(8) emacs-goodies-el needs to go into install.pl for emacs color
themes

(9) add firefox and emacs desktop items

(10) install-post needs homename specified

