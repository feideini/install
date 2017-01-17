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

system "git clone https://github.com/feideini/bin.git";
system "mkdir -v /home/$homename/ProgramFiles";
system "mkdir -v /home/$homename/dispose";

# installing freefilesync
# print "INFO: You can grab a more updated installation file here: http://www.freefilesync.org/download.php.\n";
# print "INFO: Download it to $install.\n";
# system "tar -zxvf $install/FreeFileSync_7.0_Ubuntu_15.04_64-bit.tar.gz -C /home/$homename/ProgramFiles";

# gvim and vundle
system "cp -v ./install/gvim.init /home/$homename/.vimrc";

# prepping for using mutt on amazon
# system "openssl aes-256-cbc -in $install/aws1.pem -out /home/$homename/dispose/aws1.pem.enc";
# print "openssl aes-256-cbc -in $install/aws1.pem -out /home/$homename/dispose/aws1.pem.enc\n";

# moving files
system "cp -v ./install/emacs.init /home/$homename/.emacs";
# system "tar -zxvf $install/Statistics-R-0.33.tar.gz -C /home/$homename/ProgramFiles";

# applying xmodmap
print "INFO: Applying xmodmap ...\n";
system "xmodmap /home/$homename/.Xmodmap";

# fixing guake prefs
# system "tar -zcvf /home/$homename/dispose/guake-conf-backup.tar.gz /home/$homename/.gconf/apps/guake";
# system "rm -r -v /home/$homename/.gconf/apps/guake";
# system "tar -zxvf $install/guake.tar.gz -C /home/$homename/.gconf/apps";

# creating desktop items
# system "cp -v /usr/share/applications/emacs24.desktop /home/$homename/Desktop";
# system "cp -v /usr/share/applications/guake.desktop /home/$homename/Desktop";
# system "cp -v /usr/share/applications/gvim.desktop /home/$homename/Desktop";

# installing perl modules
# system "tar -zxvf $install/Statistics-R-0.33.tar.gz -C /home/pi/ProgramFiles";
# system "cd /home/$homename/ProgramFiles/Statistics-R-0.33 && perl Makefile.PL";
# system "make -C /home/$homename/ProgramFiles/Statistics-R-0.33";
