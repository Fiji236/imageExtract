#! /bin/bash

main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
	cd "$sub_dir" || continue
	ffmpeg -i *.mkv -map 0 -c copy -c:a aac *.mp4
done

#for *.mp4 in $(pwd); do
#	dir=$(echo $file | cut -d. -f1)
#	mkdir -p $dir
#	mv $file $dir
#done
