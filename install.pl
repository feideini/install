# COMMENTS 2017-04-14 All is well -- the setup is a bit weird, with having to be in the home directory and having to have the install dir git'd.
# Here are some issues:

# (1) xmodmap procedure is NOT working. I tried fixing this by adding

# system "cp -v /home/$homename/install/.Xmodmap /home/$homename/";

# to install-local-pre.pl --> check it next time

# (2) bin.tar.gz is currently in ./computer/gemischtes --> it needs to be integrated here; also delete ./computer/bin
# I have the command

#     system "git clone https://github.com/feideini/bin.git";

# in install-local-pre.pl, but apparently that's not working out --> check it next time

# COMMENTS 2017-01-16 I hope I have taken care of most of these concerns.
# The greatest leap forward is the establishment of 
# https://github.com/feideini/install.git

# COMMENTS 2016-06-14 It is not clear how to run these two files. I
# think the idea is to run install.pl first to install guake, then to
# interrupt it and run install-local.pl, and then to run install.pl
# again as root. Fix that. Next, there are still some directories
# assumed in the install procedure that may vary on different
# computers. Define them as variables (especially, guake preferences
# file). --> things didn't go well with auctex and zenburn, either.

print "I am assuming you have git clone'd install and moved install.pl to the home folder.\n";
print "I want you to be in your home directory. If you are not, abort. Confirm by pressing ENTER. ";
$xq = <STDIN>;
print "Run install-local-pre.pl first. If you haven't yet, abort. Confirm by pressing ENTER. ";
$yq = <STDIN>;
print "Let's set some variables first.\n";
print "Home name (stefan/pi)? [stefan] ";
$homename=<STDIN>;
chomp($homename);
if ($homename eq "")
{
    $homename="stefan";
    print "Home name is $homename\n";
}
else
{
    print "Home name is $homename\n";
}
$emacs="/usr/share/emacs24/site-lisp";
# $emacs="/usr/share/emacs/site-lisp";
print "Emacs installation directory is $emacs\n";

print "Do you want to install LaTeX (default no, type yes)? ";
$latexq = <STDIN>;
chomp($latexq);
if ($latexq eq "yes")
{
  $latexq="y";
}
else
{
  $latexq="n";
}

print "First, we'll get installing postfix out of the way because it will prompt you.\n";
print "INFO: Installing postfix for abcde ...\n";
system "apt-get --assume-yes install postfix";

# setting some variables
# $install="/media/pi/134578d5-ab2b-42d7-acee-ef4be0a6852c/barney/computer/install";
# $homename="stefan";
# $homename="pi";

# installing guake before running the local file
# print "INFO: Installing guake ...\n";
# system "apt-get --assume-yes install guake";

# print "TODO: Set install directory (also in install-local.pl) and emacs install directory in install.pl.\n";
# print "TODO: If you have not done so yet abort. Confirm by pressing ENTER. ";
# $xq = <STDIN>;
# print "TODO: If you have not run install-local.pl yet abort and run it. Confirm by pressing ENTER. ";
# $qx = <STDIN>;

# installing gvim
print "INFO: Installing gvim ...\n";
system "apt-get --assume-yes install vim-gtk";
    
# programs to install added later
print "INFO: Installing xsel ...\n";
system "apt-get --assume-yes install xsel";
print "INFO: Installing emacs-goodies-el ...\n";
system "apt-get --assume-yes install emacs-goodies-el";
print "INFO: Installing gimp ...\n";
system "apt-get --assume-yes install gimp";
print "INFO: Installing graphviz ...\n";
system "apt-get --assume-yes install gparted";
print "INFO: Installing graphviz ...\n";
system "apt-get --assume-yes install graphviz";
print "INFO: Installing kdiff3 ...\n";
system "apt-get --assume-yes install kdiff3";
print "INFO: Installing xsel ...\n";
system "apt-get --assume-yes install xsel";
print "INFO: Installing shutter ...\n";
system "apt-get --assume-yes install shutter";
print "INFO: Installing terminator ...\n";
system "apt-get --assume-yes install terminator";
print "INFO: Installing eyed3 ...\n";
system "apt-get --assume-yes install eyed3";
print "INFO: Installing gthumb ...\n";
system "apt-get --assume-yes install gthumb";
print "INFO: Installing wdiff ...\n";
system "apt-get --assume-yes install wdiff";
print "INFO: Installing wine-gecko ...\n";
system "apt-get --assume-yes install wine-gecko";
print "INFO: Installing flash player ...\n";
system "apt-get --assume-yes install pepperflashplugin-nonfree";
print "INFO: Installing chromium ...\n";
system "apt-get --assume-yes install chromium-browser";
print "INFO: Installing gpodder ...\n";
system "apt-get --assume-yes install gpodder";
print "INFO: Installing gftp ...\n";
system "apt-get --assume-yes install gftp";

# installing LaTeX
if ($latexq eq "y")
   {
print "INFO: Installing context ...\n";
system "apt-get --assume-yes install context";
print "INFO: Installing texlive ...\n";
system "apt-get --assume-yes install texlive";
print "INFO: Installing untex ...\n";
system "apt-get --assume-yes install untex";
print "INFO: Installing auctex ...\n";
system "apt-get --assume-yes install auctex";
   }

# original programs to install
print "INFO: Installing abcde ...\n";
system "apt-get --assume-yes install abcde";
print "INFO: Installing asymptote ...\n";
system "apt-get --assume-yes install asymptote";
print "INFO: Installing build-essential ...\n";
system "apt-get --assume-yes install build-essential";
print "INFO: Installing catdvi ...\n";
system "apt-get --assume-yes install catdvi";
print "INFO: Installing cryptsetup ...\n";
system "apt-get --assume-yes install cryptsetup";
print "INFO: Installing cups-pdf ...\n";
system "apt-get --assume-yes install cups-pdf";
print "INFO: Installing curl ...\n";
system "apt-get --assume-yes install curl";
print "INFO: Installing devede ...\n";
system "apt-get --assume-yes install devede";
print "INFO: Installing dvd-slideshow ...\n";
system "apt-get --assume-yes install dvd-slideshow";
print "INFO: Installing dvdrip ...\n";
system "apt-get --assume-yes install dvdrip";
print "INFO: Installing easytag ...\n";
system "apt-get --assume-yes install easytag";
print "INFO: Installing emacs ...\n";
system "apt-get --assume-yes install emacs";
print "INFO: Installing ess ...\n";
system "apt-get --assume-yes install ess";
print "INFO: Installing git ...\n";
system "apt-get --assume-yes install git";
print "INFO: Installing gnome-panel ...\n";
system "apt-get --assume-yes install gnome-panel";
print "INFO: Installing gnuplot ...\n";
system "apt-get --assume-yes install gnuplot";
print "INFO: Installing id3v2 ...\n";
system "apt-get --assume-yes install id3v2";
print "INFO: Installing kazam ...\n";
system "apt-get --assume-yes install kazam";
print "INFO: Installing lame ...\n";
system "apt-get --assume-yes install lame";
print "INFO: Installing libappindicator1 ...\n";
system "apt-get --assume-yes install libappindicator1";
print "INFO: Installing liblouis-dev  ...\n";
system "apt-get --assume-yes install liblouis-dev ";
print "INFO: Installing liblouis-bin  ...\n";
system "apt-get --assume-yes install liblouis-bin ";
print "INFO: Installing liblouisxml-dev  ...\n";
system "apt-get --assume-yes install liblouisxml-dev ";
print "INFO: Installing liblouisxml-bin ...\n";
system "apt-get --assume-yes install liblouisxml-bin";
print "INFO: Installing lilypond ...\n";
system "apt-get --assume-yes install lilypond";
print "INFO: Installing lynx ...\n";
system "apt-get --assume-yes install lynx";
print "INFO: Installing mc ...\n";
system "apt-get --assume-yes install mc";
print "INFO: Installing mp3splt ...\n";
system "apt-get --assume-yes install mp3splt";
print "INFO: Installing mp3wrap ...\n";
system "apt-get --assume-yes install mp3wrap";
print "INFO: Installing octave ...\n";
system "apt-get --assume-yes install octave";
print "INFO: Installing p7zip-full ...\n";
system "apt-get --assume-yes install p7zip-full";
print "INFO: Installing pdftk ...\n";
system "apt-get --assume-yes install pdftk";
print "INFO: Installing phalanx ...\n";
system "apt-get --assume-yes install phalanx";
print "INFO: Installing pwgen ...\n";
system "apt-get --assume-yes install pwgen";
print "INFO: Installing r-cran-rcmdr ...\n";
system "apt-get --assume-yes install r-cran-rcmdr";
print "INFO: Installing wine ...\n";
system "apt-get --assume-yes install wine";
print "INFO: Installing xboard ...\n";
system "apt-get --assume-yes install xboard";
print "INFO: Installing xclip ...\n";
system "apt-get --assume-yes install xclip";
print "INFO: Installing xournal ...\n";
system "apt-get --assume-yes install xournal";

# audio-recorder
# system "apt-add-repository ppa:osmoma/audio-recorder";
# system "apt-get update";
# system "apt-get install audio-recorder";

# installing perl modules
# system "sudo make -C /home/$homename/ProgramFiles/Statistics-R-0.33 install";
# print "TODO: run make -C /home/$homename/ProgramFiles/Statistics-R-0.33 test\n";

# installing emacs modules
system "cp -v ./install/graphviz-dot-mode.el $emacs";
system "chmod 644 $emacs/asy-mode.el";

system "cp -v ./install/asy-mode.el $emacs";
system "chmod 644 $emacs/asy-mode.el";

system "cp -v ./install/csv-mode.el $emacs";
system "chmod 644 $emacs/csv-mode.el";

system "cp -v ./install/key-chord.el $emacs";
system "chmod 644 $emacs/key-chord.el";

system "cp -v ./install/php-mode.el $emacs";
system "chmod 644 $emacs/php-mode.el";

system "cp -v ./install/zenburn-theme.el $emacs";
system "chmod 644 $emacs/zenburn-theme.el";

# Copying items to Desktop
system "cp -v /usr/share/applications/Emacs.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/Emacs.desktop";
system "chmod 755 /home/$homename/Desktop/Emacs.desktop";

system "cp -v /usr/share/applications/Firefox.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/Firefox.desktop";
system "chmod 755 /home/$homename/Desktop/Firefox.desktop";

system "cp -v /usr/share/applications/gftp.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/gftp.desktop";
system "chmod 755 /home/$homename/Desktop/gftp.desktop";

system "cp -v /usr/share/applications/gpodder.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/gpodder.desktop";
system "chmod 755 /home/$homename/Desktop/gpodder.desktop";

system "cp -v /usr/share/applications/gthumb.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/gthumb.desktop";
system "chmod 755 /home/$homename/Desktop/gthumb.desktop";

system "cp -v /usr/share/applications/gvim.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/gvim.desktop";
system "chmod 755 /home/$homename/Desktop/gvim.desktop";

system "cp -v /usr/share/applications/nautilus.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/nautilus.desktop";
system "chmod 755 /home/$homename/Desktop/nautilus.desktop";

system "cp -v /usr/share/applications/shutter.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/shutter.desktop";
system "chmod 755 /home/$homename/Desktop/shutter.desktop";

system "cp -v /usr/share/applications/terminator.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/terminator.desktop";
system "chmod 755 /home/$homename/Desktop/terminator.desktop";

system "cp -v /usr/share/applications/xournal.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/xournal.desktop";
system "chmod 755 /home/$homename/Desktop/xournal.desktop";

system "cp -v /usr/share/applications/www.octave.org-octave.desktop /home/$homename/Desktop/";
system "chown $homename:$homename /home/$homename/Desktop/www.octave.org-octave.desktop";
system "chmod 755 /home/$homename/Desktop/www.octave.org-octave.desktop";

# installing vim modules
print "TODO: You must run :PluginInstall in gvim manually (start gvim by pressing Alt-F2 and\n";
print "TODO: typing gvim -- the colour scheme error will be taken care of by vundle).\n";
# system "export PATH=$PATH:/home/$homename/bin";
print "TODO: You must also run export PATH=\$PATH:/home/$homename/bin manually.";
print "TODO: Now run install-local-post.pl.\n";

