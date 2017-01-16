# setting some variables
$install="/media/pi/134578d5-ab2b-42d7-acee-ef4be0a6852c/barney/computer/install";
# $homename="stefan";
$homename="pi";

print "TODO: Run install.pl first and follow instructions. Confirm by pressing ENTER. ";

system "mkdir -v /home/$homename/bin";
system "mkdir -v /home/$homename/ProgramFiles";
system "mkdir -v /home/$homename/dispose";
system "mkdir -v /home/$homename/stropbox";

# installing freefilesync
print "INFO: You can grab a more updated installation file here: http://www.freefilesync.org/download.php.\n";
print "INFO: Download it to $install.\n";
system "tar -zxvf $install/FreeFileSync_7.0_Ubuntu_15.04_64-bit.tar.gz -C /home/$homename/ProgramFiles";

# gvim and vundle
system "cp -v $install/gvim.init /home/$homename/.vimrc";
system "mkdir -v /home/$homename/.vim";
system "mkdir -v /home/$homename/.vim/bundle";
system "git clone https://github.com/gmarik/Vundle.vim.git /home/$homename/.vim/bundle/Vundle.vim";

# prepping for using mutt on amazon
system "openssl aes-256-cbc -in $install/aws1.pem -out /home/$homename/dispose/aws1.pem.enc";
print "openssl aes-256-cbc -in $install/aws1.pem -out /home/$homename/dispose/aws1.pem.enc\n";

# moving files
system "cp -v $install/emacs.init /home/$homename/.emacs";
system "tar -zxvf $install/Statistics-R-0.33.tar.gz -C /home/$homename/ProgramFiles";

# bb
open(bbx,">/home/$homename/bin/bb");
print "INFO: Writing ~/bin/bb ...\n";
print bbx "openssl aes-256-cbc -d -in /home/$homename/dispose/aws1.pem.enc -out /home/$homename/dispose/aws1.pem\n";
print bbx "chmod 600 /home/$homename/dispose/aws1.pem\n";
print bbx "ssh -i /home/$homename/dispose/aws1.pem ubuntu\@54.186.37.23";
close(bbx);

# ff
open(ffx,">/home/$homename/bin/ff");
print "INFO: Writing ~/bin/ff ...\n";
print ffx "ssh -i /home/$homename/dispose/aws1.pem ubuntu\@54.186.37.23\n";
close(ffx);

# ee
open(eex,">/home/$homename/bin/ee");
print "INFO: Writing ~/bin/ee ...\n";
print eex "shred -u /home/$homename/dispose/aws1.pem\n";
close(eex);

# record
open(recx,">/home/$homename/bin/record");
print "INFO: Writing ~/bin/record ...\n";
print recx "#!/usr/bin/perl\n";
print recx "# keep this file also in ~/bin under the name record\n";
print recx "\$sansname=\$ARGV[0];\n";
print recx "print \"recording \$sansname.wav ...\\n\";\n";
print recx "system \"arecord -c 1 -f s16_LE -r24000 \$sansname.wav\";\n";
close(recx);

# stropd
open(stropdx,">/home/$homename/bin/stropd");
print "INFO: Writing ~/bin/stropd ...\n";
print stropdx "rsync -avz --delete --protocol=28 becker\@ftp.streetgreek.com:stropbox/ /home/$homename/stropbox/";
close(stropdx);

# stropu
open(stropux,">/home/$homename/bin/stropu");
print "INFO: Writing ~/bin/stropu ...\n";
print stropux "rsync -avz --delete --protocol=28 /home/$homename/stropbox/ becker\@ftp.streetgreek.com:stropbox/";
close(stropux);

# xx
open(xxx,">/home/$homename/bin/xx");
print "INFO: Writing ~/bin/xx ...\n";
print xxx "xmodmap /home/$homename/.Xmodmap";
close(xxx);

# xmodmap
open(xmodmapx,">/home/$homename/.Xmodmap");
print "INFO: Writing ~/.Xmodmap ...\n";
print xmodmapx "!! No Caps Lock\nclear lock\n!! Make Caps_lock an escape key.\nkeycode 0x42 = Escape";
close(xmodmapx);

# applying xmodmap
print "INFO: Applying xmodmap ...\n";
system "xmodmap /home/$homename/.Xmodmap";

# fixing guake prefs
system "tar -zcvf /home/$homename/dispose/guake-conf-backup.tar.gz /home/$homename/.gconf/apps/guake";
system "rm -r -v /home/$homename/.gconf/apps/guake";
system "tar -zxvf $install/guake.tar.gz -C /home/$homename/.gconf/apps";

# creating desktop items
system "cp -v /usr/share/applications/emacs24.desktop /home/$homename/Desktop";
system "cp -v /usr/share/applications/guake.desktop /home/$homename/Desktop";
system "cp -v /usr/share/applications/gvim.desktop /home/$homename/Desktop";

# installing perl modules
system "tar -zxvf $install/Statistics-R-0.33.tar.gz -C /home/pi/ProgramFiles";
system "cd /home/$homename/ProgramFiles/Statistics-R-0.33 && perl Makefile.PL";
system "make -C /home/$homename/ProgramFiles/Statistics-R-0.33";
