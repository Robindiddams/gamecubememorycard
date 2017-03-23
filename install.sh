#!/bin/bash

MYDIR="/Users/$USER/Library/Application Support/Dolphin"
if [[ -d "$MYDIR" ]]; then
  # Control will enter here if $DIRECTORY exists.
  FILE="MemoryCardA.USA.raw"
  if [ -f $FILE ]; then
     cp *.raw "$MYDIR/GC/"
     echo "Copying savedata to $MYDIR/GC/"
  else
     echo "File $FILE does not exist. So I'll pull the latest from our repo"
     curl -O https://raw.githubusercontent.com/Robindiddams/gamecubememorycard/master/MemoryCardA.USA.raw
     curl -O https://raw.githubusercontent.com/Robindiddams/gamecubememorycard/master/SRAM.raw
     mv MemoryCardA.USA.raw "$MYDIR/GC/"
     mv SRAM.raw "$MYDIR/GC/"
     echo "Copying savedata to $MYDIR/GC/"
     echo "OK, you're good to go"
  fi

else
  echo "looks like Dolphin isnt installed"
fi
