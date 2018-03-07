#!/bin/bash 
clear
##set the prompt to show you are in pentmenu and not standard shell
PS3="GSH ToolBox Installer>"
#banner
echo -e """\e[33m

     ┌────────────────────────────────────────────────────────────────────────────────┐
     │▞▀▖           ▌    ▞▀▖            ▗▐      ▌ ▌      ▌         ▀▛▘     ▜ ▛▀▖      │
     │▌▄▖▝▀▖▙▀▖▌ ▌▞▀▌▝▀▖ ▚▄ ▞▀▖▞▀▖▌ ▌▙▀▖▄▜▀ ▌ ▌ ▙▄▌▝▀▖▞▀▖▌▗▘▞▀▖▙▀▖  ▌▞▀▖▞▀▖▐ ▙▄▘▞▀▖▚▗▘│
     │▌ ▌▞▀▌▌  ▌ ▌▌ ▌▞▀▌ ▖ ▌▛▀ ▌ ▖▌ ▌▌  ▐▐ ▖▚▄▌ ▌ ▌▞▀▌▌ ▖▛▚ ▛▀ ▌    ▌▌ ▌▌ ▌▐ ▌ ▌▌ ▌▗▚ │
     │▝▀ ▝▀▘▘  ▝▀▘▝▀▘▝▀▘ ▝▀ ▝▀▘▝▀ ▝▀▘▘  ▀▘▀ ▗▄▘ ▘ ▘▝▀▘▝▀ ▘ ▘▝▀▘▘    ▘▝▀ ▝▀  ▘▀▀ ▝▀ ▘ ▘│
     └────────────────────────────────────────────────────────────────────────────────┘
     |                                                                                |
     |           WELCOME TO GARUDA SECURITY HACKER TOOLBOX INSTALLER                  |
     |               Let's Make Your Exploitation And Have Fun                        |
     |                                                                                |
     |                       Code By Yoshieichiro_01                                  |
     |                            Version 1.0                                         |
     |                                                                                |
     |  Jika Mau Recode Beritahu Salah Satu Admin GARUDA SECURITY HACKER Dulu Ya Tod  |
     |                        Jangan Langsung Main Recode Aja                         |
     |                                                                                |
     |                 Klo Mau Recode Jangan Ganti Copyright ya Tod :v                |
     |                                                                                |
     |                          No Army Can Stop Our Idea                             |
     +--------------------------------------------------------------------------------+   


\e[0m\e[0m"""
echo -e " \e[34m"
mainmenu=("Go To Install" "Quit")
select opt in "${mainmenu[@]}"
do
  if [ "$opt" = "Quit" ]
  then
    clear
#banner
echo -e """\e[1m\e[32m
  ▀▛▘▌        ▌   ▌ ▌      ▛▀▘      ▌ ▌   ▗       
   ▌ ▛▀▖▝▀▖▛▀▖▌▗▘ ▝▞▞▀▖▌ ▌ ▙▄▞▀▖▙▀▖ ▌ ▌▞▀▘▄ ▛▀▖▞▀▌
   ▌ ▌ ▌▞▀▌▌ ▌▛▚   ▌▌ ▌▌ ▌ ▌ ▌ ▌▌   ▌ ▌▝▀▖▐ ▌ ▌▚▄▌
   ▘ ▘ ▘▝▀▘▘ ▘▘ ▘  ▘▝▀ ▝▀▘ ▘ ▝▀ ▘   ▝▀ ▀▀ ▀▘▘ ▘▗▄▘
\e[0m\e[0m"""
    exit 0
  elif [ "$opt" = "Go To Install" ]
  then
    clear
    bash build/build.sh
  fi
done
fi
