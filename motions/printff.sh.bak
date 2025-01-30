#! /bin/bash

main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
	cd "$sub_dir"
	printf "file '%s'\n" *.mp4 >"$sub_dir".txt
	cd ..
	mv *.txt "$sub_dir"
done
