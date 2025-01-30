#! /usr/bin/env bash

#The purpose of this script is three fold.
# 1. Create sub_dir based on the names of present fiels eg .mkv
# 2. Move the reference files into the previously created sub_dir
# 3. Loop through every created sub_dir form the parent/(pwd)
#   3a. Use ffmpeg to extract 1 for every 24 frames and output 
#      sequentially. 
#   3b. Rename newly created .jpg to the name of the sub_dir+1
#
# TODO
#  Adding a compression step at the end to save space in the process.
#  

# mkdir_mv // Creates sub_dir based on the name of present files.
#
#for file in *
#do 
#  dir=$(echo $file | cut -d. -f1)
#  mkdir -p $dir
#  mv $file $dir
#done

main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
    for file in *; do
      dir=$(echo $file | cut -d. -f1)
      mkdir -p $dir
      mv $file $dir
    done
    cd "$sub_dir" || continue
    ffmpeg -i *.mkv -vf fps=1/10 %03d.jpg  
  done

# sh v2idating.sh // Echos out the pwd, cuts and renames the previously 
# created .jpg files to the echo pwd, interated by n+1.

#  n=0
#  i=$(echo $(pwd) | cut -d. -f1)
#  for file in *.jpg
#  do
#    mv "$file" "$i""_${n}".jpg
#    n=$((n+1))
#  done
#done
