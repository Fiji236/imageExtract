#! /bin/bash

mkdir original_videos
main_dir=$(pwd)
f=$(*.mkv)
for sub_dir in "$main_dir"
do
  cd "$sub_dir" 
  mv "$f" "$main_dir"/originals
  tar -czvf originals.tar.gz originals
done

