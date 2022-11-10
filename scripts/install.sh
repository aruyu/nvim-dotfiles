#!/bin/bash
#==
#   NOTE      - buildtags.sh
#   Author    - Eira Chae
#
#   Created   - 2022.10.19
#   Github    - https://github.com/vine91
#   Contact   - vine9151@gmail.com
#/



T_CO_RED='\e[1;31m'
T_CO_YELLOW='\e[1;33m'
T_CO_GREEN='\e[1;32m'
T_CO_BLUE='\e[1;34m'
T_CO_GRAY='\e[1;30m'
T_CO_NC='\e[0m'

CURRENT_PROGRESS=0

function script_print()
{
  echo -ne "$T_CO_BLUE[SCRIPT]$T_CO_NC$1"
}

function script_print_notify()
{
  echo -ne "$T_CO_BLUE[SCRIPT]$T_CO_NC$T_CO_GREEN-Notify- $1$T_CO_NC"
}

function script_print_error()
{
  echo -ne "$T_CO_BLUE[SCRIPT]$T_CO_NC$T_CO_RED-Error- $1$T_CO_NC"
}

function delay()
{
  sleep 0.2;
}

function progress()
{
  PARAM_PROGRESS=$1;
  PARAM_PHASE=$2;

  if [  $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0  ]; then
    script_print "[$T_CO_GRAY........................................$T_CO_NC] (0%)  $PARAM_PHASE                    \r" ; delay; fi;

  if [  $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5  ]; then
    script_print "[$T_CO_RED>>$T_CO_NC$T_CO_GRAY......................................$T_CO_NC] (5%)  $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then
    script_print "[$T_CO_RED>>>>$T_CO_NC$T_CO_GRAY....................................$T_CO_NC] (10%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then
    script_print "[$T_CO_RED>>>>>>$T_CO_NC$T_CO_GRAY..................................$T_CO_NC] (15%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then
    script_print "[$T_CO_RED>>>>>>>>$T_CO_NC$T_CO_GRAY................................$T_CO_NC] (20%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then
    script_print "[$T_CO_RED>>>>>>>>>>$T_CO_NC$T_CO_GRAY..............................$T_CO_NC] (25%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then
    script_print "[$T_CO_RED>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY............................$T_CO_NC] (30%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then
    script_print "[$T_CO_RED>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY..........................$T_CO_NC] (35%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then
    script_print "[$T_CO_RED>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY........................$T_CO_NC] (40%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY......................$T_CO_NC] (45%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY....................$T_CO_NC] (50%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY..................$T_CO_NC] (55%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY................$T_CO_NC] (60%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY..............$T_CO_NC] (65%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY............$T_CO_NC] (70%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY..........$T_CO_NC] (75%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then
    script_print "[$T_CO_YELLOW>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY........$T_CO_NC] (80%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then
    script_print "[$T_CO_GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY......$T_CO_NC] (85%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then
    script_print "[$T_CO_GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC$T_CO_GRAY....$T_CO_NC] (90%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 95 -a $PARAM_PROGRESS -ge 95 ]; then
    script_print "[$T_CO_GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>$T_CO_NC] (100%) $PARAM_PHASE                    \r" ; delay; fi;

  if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ]; then
    echo
    script_print_notify "Progress Done!                                                                                \n" ; delay; fi;

  CURRENT_PROGRESS=$PARAM_PROGRESS;
}




#==
#   Starting Code in below.
#/

UBUNTU=Ubuntu
MACOS=Mac
GIT=Git

read -p "Enter what you want to init: " CURRENT_JOB


if [ $CURRENT_JOB = $UBUNTU ]; then
  echo -ne "Selected OS: $CURRENT_JOB\n"

  echo `sudo add-apt-repository ppa:neovim-ppa/unstable -y`
  echo `sudo apt-get update -y`
  echo `sudo apt-get install neovim -y`
  echo `pip3 install neovim`
  #git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  # ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  #echo `sudo apt-get install powerline fonts-powerline -y`
  echo -ne "\n\n\n\n\n"
  progress 5 "Install Neovim"


  #echo `sudo apt-get install llvm -y`
  echo `sudo apt-get install clangd -y`
  echo `sudo apt-get install clang-format -y`
  echo `sudo apt-get install gcc -y`
  echo `sudo apt-get install make -y`
  echo `sudo apt-get install bear -y`
  echo -ne "\n\n\n\n\n"
  progress 35 "Install clang & gcc"


  echo `sudo apt-get install universal-ctags -y`
  echo `sudo apt-get install global -y`
  echo -ne "\n\n\n\n\n"
  progress 65 "Install ctags & gtags"


  echo `sudo apt-get install unzip -y`
  echo `sudo apt-get install ripgrep -y`
  echo -ne "\n\n\n\n\n"
  progress 95 "Install utils for Neovim"


  #echo `curl -sL install-node.vercel.app/lts | bash`
  #echo -ne "\n\n\n\n\n"
  #progress 95 "Install node-js"


  echo `nvim --version`
  echo `clangd --version`
  echo `clang-format --version`
  echo `gcc --version`
  echo `make --version`
  echo `bear --version`
  echo `ctags --version`
  echo `global --version`
  echo `unzip --version`
  echo `node --version`
  echo -ne "\n\n\n\n\n"
  progress 100 "Done."

  exit 1

else if [ $CURRENT_JOB = $MACOS ]; then
  echo -ne "Selected OS: $CURRENT_JOB\n"

  echo `brew install neovim`
  echo `pip3 install neovim`
  #git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  # ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  echo -ne "\n\n\n\n\n"
  progress 5 "Install Neovim"


  echo `brew install clang-format`
  echo `brew install bear`
  echo -ne "\n\n\n\n\n"
  progress 25 "Install clang & gcc"


  echo `brew install universal-ctags`
  echo `brew install global`
  echo -ne "\n\n\n\n\n"
  progress 45 "Install ctags & gtags"


  echo `brew install unzip`
  echo `brew install ripgrep`
  echo -ne "\n\n\n\n\n"
  progress 65 "Install utils for Neovim"


  echo `brew install node`
  echo -ne "\n\n\n\n\n"
  progress 95 "Install node-js"


  echo `nvim --version`
  echo `clangd --version`
  echo `clang-format --version`
  echo `gcc --version`
  echo `make --version`
  echo `bear --version`
  echo `ctags --version`
  echo `global --version`
  echo `unzip --version`
  echo `node --version`
  echo -ne "\n\n\n\n\n"
  progress 100 "Done."

  exit 1

else if [ $CURRENT_JOB = $GIT ]; then
  echo -ne "Selected Job: $CURRENT_JOB\n"

  echo `git config --global core.editor "nvim"`
  echo `git config --global commit.template "~/.config/.gitconfig"`

  echo `git config --global user.name`
  echo `git config --global user.email`
  echo `git config --global core.editor`
  echo `git config --global commit.template`

  exit 1

else
  script_print_error "Select between 'Ubuntu' or 'Mac', 'Git'!\n"
  exit 1
fi
