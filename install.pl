# COMMENTS 2016-06-14 It is not clear how to run these two files. I
# think the idea is to run install.pl first to install guake, then to
# interrupt it and run install-local.pl, and then to run install.pl
# again as root. Fix that. Next, there are still some directories
# assumed in the install procedure that may vary on different
# computers. Define them as variables (especially, guake preferences
# file). --> things didn't go well with auctex and zenburn, either.

# setting some variables
$install="/media/pi/134578d5-ab2b-42d7-acee-ef4be0a6852c/barney/computer/install";
$emacs="/usr/share/emacs/site-lisp";
# $homename="stefan";
$homename="pi";

# installing guake before running the local file
print "INFO: Installing guake ...\n";
system "apt-get --assume-yes install guake";

print "TODO: Set install directory (also in install-local.pl) and emacs install directory in install.pl.\n";
print "TODO: If you have not done so yet abort. Confirm by pressing ENTER. ";
$xq = <STDIN>;
print "TODO: If you have not run install-local.pl yet abort and run it. Confirm by pressing ENTER. ";
$qx = <STDIN>;

print "Do you want to install LaTeX? (y/n) ";
$latexq = <STDIN>;
chomp($latexq);

# installing gvim
print "INFO: Installing gvim ...\n";
system "apt-get --assume-yes install vim-gtk";

# intalling emacs modules
system "cp -v $install/asy-mode.el $emacs";
system "chmod 644 $emacs/asy-mode.el";

system "cp -v $install/csv-mode.el $emacs";
system "chmod 644 $emacs/csv-mode.el";

system "cp -v $install/key-chord.el $emacs";
system "chmod 644 $emacs/key-chord.el";

system "cp -v $install/php-mode.el $emacs";
system "chmod 644 $emacs/php-mode.el";

system "cp -v $install/zenburn-theme.el $emacs";
system "chmod 644 $emacs/zenburn-theme.el";

# programs to install added later
print "INFO: Installing eyed3 for abcde ...\n";
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
print "INFO: Installing auctex ...\n";
system "apt-get --assume-yes install auctex";
print "INFO: Installing context ...\n";
system "apt-get --assume-yes install context";
print "INFO: Installing texlive ...\n";
system "apt-get --assume-yes install texlive";
print "INFO: Installing untex ...\n";
system "apt-get --assume-yes install untex";
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
system "sudo make -C /home/$homename/ProgramFiles/Statistics-R-0.33 install";
print "TODO: run make -C /home/$homename/ProgramFiles/Statistics-R-0.33 test\n";

print "TODO: You must run :PluginInstall in gvim manually (start gvim by pressing Alt-F2 and\n";
print "TODO: typing gvim -- the colour scheme error will be taken care of by vundle).\n";
# not working don't know why
# system "export PATH=$PATH:/home/$homename/bin";
print "TODO: You must run export PATH=\$PATH:/home/$homename/bin manually.";

