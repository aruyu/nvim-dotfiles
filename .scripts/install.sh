#!/bin/bash
#==
#   NOTE      - install.sh
#   Author    - Asta
#
#   Created   - 2022.10.19
#   Github    - https://github.com/astaos
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

function error_exit()
{
  script_print_error "$1\n\n"
  exit 1
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

if [[ $EUID -eq 0 ]]; then
  error_exit "This script must be run as USER!"
fi

ARCH=Arch
UBUNTU=Ubuntu
MAC=Mac
GIT=Git

read -p "Enter what you want to install (Arch, Ubuntu, Mac, Git): " CURRENT_JOB


if [ $CURRENT_JOB = $ARCH ]; then
  progress 5 "Selected OS: $CURRENT_JOB"

  echo -ne "Progressing...                                                                                \n"
  sudo pacman -S --needed --noconfirm python
  sudo pacman -S --needed --noconfirm pip
  sudo pacman -S --needed --noconfirm nodejs
  sudo pacman -S --needed --noconfirm npm
  pip --version
  pip3 --version
  node --version
  npm --version
  echo -ne "\n\n\n\n\n"
  progress 25 "Install essentials"


  echo -ne "Progressing...                                                                                \n"
  sudo pacman -S --needed --noconfirm neovim
  echo -ne "\n\n\n\n\n"
  progress 35 "Install Neovim"


  echo -ne "Progressing...                                                                                \n"
  sudo pacman -S --needed --noconfirm llvm
  sudo pacman -S --needed --noconfirm clang
  sudo pacman -S --needed --noconfirm gcc
  sudo pacman -S --needed --noconfirm make
  sudo pacman -S --needed --noconfirm bear
  echo -ne "\n\n\n\n\n"
  progress 55 "Install clang & gcc"


  echo -ne "Progressing...                                                                                \n"
  sudo pacman -S --needed --noconfirm universal-ctags
  sudo pacman -S --needed --noconfirm global
  echo -ne "\n\n\n\n\n"
  progress 65 "Install ctags & gtags"


  echo -ne "Progressing...                                                                                \n"
  sudo pacman -S --needed --noconfirm unzip
  sudo pacman -S --needed --noconfirm ripgrep
  sudo pacman -S --needed --noconfirm lazygit
  echo -ne "\n\n\n\n\n"
  progress 75 "Install utils for Neovim"


  echo -ne "Progressing...                                                                                \n"
  sudo npm install -g neovim
  pip3 install neovim
  echo -ne "\n\n\n\n\n"
  progress 95 "Install extras for Neovim"


  echo -ne "Progressing...                                                                                \n"
  nvim --version
  llvm --version
  clang --version
  gcc --version
  make --version
  bear --version
  ctags --version
  global --version
  unzip --version
  lazygit --version
  echo -ne "\n\n\n\n\n"
  progress 100 "Done."

  exit 1
fi

if [ $CURRENT_JOB = $UBUNTU ]; then
  progress 5 "Selected OS: $CURRENT_JOB"
  read -p "Do you want to upgrade your Ubuntu latest? (y/n): " SELECTION

  if [ $SELECTION = y ]; then
    sudo apt-get -y update
    sudo apt-get -y upgrade
    sudo apt-get -y dist-upgrade
    sudo apt-get -y install update-manager-core
    sudo do-release-upgrade -d
    lsb_release -a
  fi


  echo -ne "Progressing...                                                                                \n"
  sudo apt-get -y update
  sudo apt-get -y install software-properties-common
  sudo apt-get -y install curl

  sudo add-apt-repository ppa:deadsnakes/ppa
  sudo apt-get -y install python3.10
  sudo curl https://bootstrap.pypa.io/get-pip.py -o ~/get-pip.py
  sudo -H python3.10 ~/get-pip.py
  sudo curl -sL https://deb.nodesource.com/setup_14.x -o ~/nodesource_setup.sh
  sudo bash ~/nodesource_setup.sh
  sudo apt-get -y install nodejs

  sudo rm ~/get-pip.py ~/nodesource_setup.sh
  sudo pip --version
  sudo pip3 --version
  sudo node --version
  sudo npm --version
  echo -ne "\n\n\n\n\n"
  progress 25 "Install essentials"


  echo -ne "Progressing...                                                                                \n"
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt-get -y update
  sudo apt-get -y install neovim
  echo -ne "\n\n\n\n\n"
  progress 35 "Install Neovim"


  echo -ne "Progressing...                                                                                \n"
  sudo apt-get -y install llvm
  sudo apt-get -y install clangd
  sudo apt-get -y install clang-format
  sudo apt-get -y install gcc
  sudo apt-get -y install make
  sudo apt-get -y install bear
  echo -ne "\n\n\n\n\n"
  progress 55 "Install clang & gcc"


  echo -ne "Progressing...                                                                                \n"
  sudo apt-get -y install universal-ctags
  sudo apt-get -y install global
  echo -ne "\n\n\n\n\n"
  progress 65 "Install ctags & gtags"


  echo -ne "Progressing...                                                                                \n"
  sudo apt-get -y install unzip
  sudo apt-get -y install ripgrep
  sudo add-apt-repository ppa:lazygit-team/release
  sudo apt-get -y update
  sudo apt-get -y install lazygit
  echo -ne "\n\n\n\n\n"
  progress 75 "Install utils for Neovim"


  echo -ne "Progressing...                                                                                \n"
  sudo apt-get -y install python3-venv
  sudo npm install -g neovim
  pip3 install neovim
  echo -ne "\n\n\n\n\n"
  progress 95 "Install extras for Neovim"


  echo -ne "Progressing...                                                                                \n"
  nvim --version
  llvm --version
  clangd --version
  clang-format --version
  gcc --version
  make --version
  bear --version
  ctags --version
  global --version
  unzip --version
  lazygit --version
  echo -ne "\n\n\n\n\n"
  progress 100 "Done."

  exit 1
fi

if [ $CURRENT_JOB = $MAC ]; then
  progress 5 "Selected OS: $CURRENT_JOB"

  echo -ne "Progressing...                                                                                \n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.bashrc
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bashrc
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew update
  brew upgrade
  brew install node

  pip --version
  pip3 --version
  node --version
  npm --version
  echo -ne "\n\n\n\n\n"
  progress 25 "Install essentials"


  echo -ne "Progressing...                                                                                \n"
  brew install neovim
  echo -ne "\n\n\n\n\n"
  progress 35 "Install Neovim"


  echo -ne "Progressing...                                                                                \n"
  brew install clang-format
  brew install bear
  echo -ne "\n\n\n\n\n"
  progress 55 "Install clang & gcc"


  echo -ne "Progressing...                                                                                \n"
  brew install universal-ctags
  brew install global
  echo -ne "\n\n\n\n\n"
  progress 65 "Install ctags & gtags"


  echo -ne "Progressing...                                                                                \n"
  brew install unzip
  brew install ripgrep
  brew install lazygit
  echo -ne "\n\n\n\n\n"
  progress 75 "Install utils for Neovim"


  echo -ne "Progressing...                                                                                \n"
  sudo npm install -g neovim
  pip3 install neovim
  echo -ne "\n\n\n\n\n"
  progress 95 "Install extras for Neovim"


  echo -ne "Progressing...                                                                                \n"
  nvim --version
  llvm --version
  clangd --version
  clang-format --version
  gcc --version
  make --version
  bear --version
  ctags --version
  global --version
  unzip --version
  lazygit --version
  echo -ne "\n\n\n\n\n"
  progress 100 "Done."

  exit 1
fi

if [ $CURRENT_JOB = $GIT ]; then
  echo -ne "Selected Job: $CURRENT_JOB\n"
  read -p "Enter the git user.name: " USERNAME
  read -p "Enter the git user.email: " USEREMAIL

  git config --global user.name "$USERNAME"
  git config --global user.email "$USEREMAIL"
  git config --global core.editor "nvim"
  git config --global commit.template "~/.config/gitconfig/.gitconfig"

  git config --global user.name
  git config --global user.email
  git config --global core.editor
  git config --global commit.template

  exit 1
fi
