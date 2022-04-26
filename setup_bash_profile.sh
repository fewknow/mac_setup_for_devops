#!/bin/bash

#Need to reserve old bash_profile
DATE=`date +%m%d%y%H%m%s`
LOCATION="${HOME}/.bash_profile_${DATE}"
echo "sudo mv ${HOME}/.bash_profile ${LOCATION}"
sudo mv ${HOME}/.bash_profile ${LOCATION}


#copy new bash profile
echo "sudo cp ./devops_bash_profile ${HOME}/.bash_profile "
sudo cp ./devops_bash_profile ${HOME}/.bash_profile

#source
echo "source ~/.bash_profile"
source ${HOME}/.bash_profile


echo "${green}Setup complete.  Will now source your bash profile."
source ~/.bash_profile
sleep 5
