#!/bin/bash
##User Validation
user=`id | cut -d" " -f1 | cut -d"(" -f2 | cut -d")" -f1`
if [ "$user" != "root" ] 
then
	echo -e "\e[1m\e[31mNOTE: You don't have admin privilegies, execute the script as root.\e[0m\e[0m"
	exit 0
fi
##ModuleInstall

#Python
apt-get install python
apt-get install python-mechanize

#Ruby
apt-get install ruby 

#Perl
apt-get install perl
apt-get install perl5

#Bash
apt-get install bash
