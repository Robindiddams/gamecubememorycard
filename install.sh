#!/bin/bash

MYDIR="/Users/$USER/Library/Application Support/Dolphin"
if [[ -d "$MYDIR" ]]; then
  # Control will enter here if $DIRECTORY exists.
  cp *.raw "$MYDIR/GC/"
  echo $MYDIR
else
  echo "looks like Dolphin isnt installed"
fi

# echo "looks like Dolphin isnt installed"
# echo -n "Do you want to grab it? (y/n)? "
# read answer
# if echo "$answer" | grep -iq "^y" ;then
#     curl -O http://dl-mirror.dolphin-emu.org/5.0/dolphin-5.0.dmg
# else
#     echo ok
# fi
#
# rm -rf *.dmg
