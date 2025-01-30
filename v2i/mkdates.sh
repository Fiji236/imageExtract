#! /usr/bin/env bash

for file in *; do
	dir=$(echo $file | cut -d. -f1)
	mkdir -p $dir
done
