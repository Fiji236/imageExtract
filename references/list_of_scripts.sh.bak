#! /bin/bash

#mkdir_mv.sh

for file in *
do dir=$(echo $file | cut -d. -f1)
  mkdir -p $dir
  mv $file $dir
done

#loop_through.sh

main_dir=$(pwd)
for sub_dir in "$main_dir"/*
do
  cd "$sub_dir" || continue
done

#ffmpeg_1:24.sh v2i24.sh

ffmpeg -i *.mkv -vf fps=1/24 %03d.jpg

#ffmpeg_24:1.sh i2v24.sh

ffmpeg -r 24 -pattern_type glob -i *.jpg -c:v libx264 out.mp4


#rename with n+1 from Stack Overflow User: Yann Moisann

n=0
for file in *.jpg
do
  mv "$file" basename"${n}".jpg
  n=$((n+1))
done

#another renamer

for file in .jpg
do
  file=$(echo *.mkv | cut -d. -f1 | ((n+1)))
done

#i2v rename 1

n=0
i=$(echo $(pwd) | cut -d. -f1)
for file in *.jpg
do
  mv "$file" "$i""${n}".jpg
  n=$((n+1))
done

#i2v rename 2

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


