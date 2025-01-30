#! /bin/bash

for file in /*; do
	dir=$(echo $file | cut -d. -f1)
	mkdir -p $dir
	mv $file $dir
done
