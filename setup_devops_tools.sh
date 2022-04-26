#!/bin/bash

#source
echo "source ~/.bash_profile"
source ${HOME}/.bash_profile

##########
# COLORS #
##########
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo "${green}Installing all the needed tools for the perfect devops journey"
echo "${green}Feel free to add anything to this repo and open a MR."

sleep 5

############
# INSTALLS #
############
BREW=`which brew`
if [ -z $BREW ]; then
  echo "${red}need to install brew${reset}"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "${green}brew installed"
else
  echo "${green}brew is already installed"
fi

if ! command -v ansible; then
  echo "${red}need to install ansible"
  brew install ansible
  echo "${green}ansible installed"
else
  echo "${green}ansible is already installed"
fi

AWSCLI=`which aws`
if [ -z $AWSCLI ]; then
  echo "${red}need to install awscli${reset}"
  brew install awscli
  echo "${green}awscli installed"
else
  echo "${green}awscli is already installed"
fi

# brew install thefuck

if ! command -v chtf; then
  echo "${red}need to install chtf"
  brew tap Yleisradio/terraforms
  echo "installing chtf"
  brew install chtf
  echo "${green}chtf installed"
  echo "sourcing chtf"
  source "/usr/local/share/chtf/chtf.sh"
  echo "setting chtf version"
  chtf 0.13.0
else
  echo "${green}chtf is already installed"
fi

if ! command -v docker; then
  echo "${red}need to install docker"
  brew install docker
  echo "${green}docker installed"
else
  echo "${green}docker is already installed"
fi

if ! command -v docker-compose; then
  echo "${red}need to install docker-compose"
  brew install docker-compose
  echo "${green}docker-compose installed"
else
  echo "${green}docker-compose is already installed"
fi

if ! command -v go; then
  echo "${red}need to install go"
  brew install golang
  echo "${green}go installed"
else
  echo "${green}go is already installed"
fi

if ! command -v helm; then
  echo "${red}need to install helm"
  brew install helm
  echo "${green}helm installed"
else
  echo "${green}helm is already installed"
fi

if ! command -v kind; then
  echo "${red}need to install kind"
  brew install kind
  echo "${green}kind installed"
else
  echo "${green}kind is already installed"
fi

if ! command -v kubectl; then
  echo "${red}need to install kubectl"
  brew install kubectl
  echo "${green}kubectl installed"
else
  echo "${green}kubectl is already installed"
fi

if ! command -v packer; then
  echo "${red}need to install packer"
  brew install packer
  echo "${green}packer installed"
else
  echo "${green}packer is already installed"
fi

# Yes, chtf should install terraform, but it's not on the cli.  More work likely needed on chtf/tf, stopgap for now.
if ! command -v terraform; then
  echo "${red}need to install terraform"
  brew cask install terraform-0.13.0
  echo "${green}terraform installed"
else
  echo "${green}terraform is already installed"
fi

if ! command -v tfswitch; then
  echo "${red}need to install tfswitch"
  brew install warrensbox/tap/tfswitch
  echo "${green}tfswitch installed"
else
  echo "${green}tfswitch is already installed"
fi

CONSUL=`which consul`
if [ -z $CONSUL ]; then
  echo "${red}need to install consul${reset}"
  brew install consul
  echo "${green}consul installed"
else
  echo "${green}consul is already installed"
fi

VAULT=`which vault`
if [ -z $VAULT ]; then
  echo "${red}need to install vault${reset}"
  brew install vault
  echo "${green}vault installed${reset}"
else
  echo "${green}vault is already installed"
fi

VAGRANT=`which vagrant`
if [ -z $VAGRANT ]; then
  echo "${red}need to install vagrant"
  brew install vagrant
  echo "${green}vagrant installed"
else
  echo "${green}vagrant is already installed"
fi

VBOX=`which vboxmanage`
if [ -z $VBOX ]; then
  echo "${red}need to install virtualbox"
  brew install virtualbox
  echo "${green}virtualbox installed"
else
  echo "${green}virtualbox is already installed"
fi


ANSBLE=`which ansible`
if [ -z $ANSBLE ]; then
  echo "${red}need to install ansible"
  brew install ansible
  echo "${green}ansible installed"
else
  echo "${green}ansible is already installed"
fi

ATOM=`which atom`
if [ -z $ATOM ]; then
  echo "${red}need to install atom"
  brew install atom
  echo "${green}atom installed"
else
  echo "${green}atom is already installed"
fi

ITERM2="/usr/local/Caskroom/iterm2/"
if [ ! -d "$ITERM2" ]; then
  echo "${red}need to install iterm2"
  brew install iterm2
  echo "${green}iterm2 installed"
else
  echo "${green}iterm2 is already installed"
fi

echo "${reset}reset color"

####################
# GIT AWARE PROMPT #
###################
mkdir -p ~/.bash
cd ~/.bash
FOLDER=git-aware-prompt
URL=https://github.com/jimeh/git-aware-prompt.git
if [ ! -d "$FOLDER" ] ; then
    git clone "$URL" "$FOLDER"
fi

echo "${green}Setup complete.  Will now source your bash profile."
source ~/.bash_profile
sleep 5
