#!/bin/bash
for D in ./*/
do 
  if [ -d "${D}" ]
    ffmpeg -i */*.mkv -vf fps=1/30 images/out-%03d.jpg
    mkdir images 
    mv *.jpg images
    cd images
    cd .. cd ..
  fi
done
