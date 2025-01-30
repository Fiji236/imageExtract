#! /bin/bash

main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
	cd "$sub_dir" || continue
	ls | while read file; do
		mv "$file" "$(echo "$file" | sed -r 's/^RecM02_//g')"
		mv "$file" "$(echo "$file" | sed -r 's/^RecS02_//g')"
	done
done
