#! /bin/bash

# v2irename.sh

main_dir=$(pwd)
for sub_dir in "$main_dir"/*
do
  cd "$sub_dir" || continue
  n=0
  i=$(echo $(pwd) | cut -d. -f1)
  for file in *.jpg
  do 
    mv "$file" "$i""${n}".jpg
    n=$((n+1))
  done
done

# v2i.sh

mkdir_mv.sh
main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
  cd "$sub_dir" || continue
  mkdir images
  ffmpeg_1:24.sh
  cd images
  ffmpeg_24:1.sh
done

# i2vsh.sh

sh mkdir_mv.sh
sh v2i24.sh
sh i2v_rename.sh

# v2i_test.sh

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
for file in *
do 
  dir=$(echo $file | cut -d. -f1)
  mkdir -p $dir
  mv $file $dir
done

# v2i24 // Starting the parent dir, iterates through 
# the previously created sub_dir.
#
main_dir=$(pwd)
for sub_dir in "$main_dir"/*
do
  cd "$sub_dir" || continue
  ffmpeg -i *.mkv -vf fps=1/24 %03d.jpg

# v2idating // Echos out the pwd, cuts and renames the previously 
# created .jpg files to the echo pwd, interated by n+1.
#
  n=0
  i=$(echo $(pwd) | cut -d. -f1)
  for file in *.jpg
  do
    mv "$file" "$i""${n}".jpg
    n=$((n+1))
  done
done

# mkdir_mv.sh

for file in *
do 
  dir=$(echo $file | cut -d. -f1)
  mkdir -p $dir
  mv $file $dir
done

# mv_out.sh

main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
  cd "$sub_dir" || continue
  mv *.mkv "$main_dir"
  cd ..
  rm -r "$sub_dir"
done

# rmr_i2v.sh
main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
  cd "$sub_dir" || continue
  rm -r /
done
