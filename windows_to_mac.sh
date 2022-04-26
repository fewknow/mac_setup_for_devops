#!/bin/bash

#!/bin/bash
PWD=`pwd`
echo "You are at : ${PWD}"
PATH=$1

window_to_mac()
{
  for f in $1/*; do
      # do some stuff here with "$f"
      # remember to quote it or spaces may misbehave
      if [[ -d $f ]]; then
        echo "Another Directory"
        window_to_mac ${f}
      else
        echo "FILE CONVERTED IS : {$f}"
        /usr/local/bin/dos2unix -n $f $f
      fi


  done
}

window_to_mac ${PATH}
