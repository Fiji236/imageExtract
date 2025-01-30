#! /usr/bin/env bash
main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
  cd "$sub_dir" || continue
  rm -r *.mp4
done
