#! /bin/bash

for file in *
do file=$(echo $dir | cut -d. -f1)
  mkdir -p $file
  mv $file $dir
done
