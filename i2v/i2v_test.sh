#! /bin/bash
main_dir=$(pwd)
for sub_dir in "$main_dir"/*; do
	cd "$sub_dir" || continue
	ffmpeg -r 30 -i "%03d.jpg" -movflags +faststart -preset veryfast -threads 24 -c:v libx264 -crf 17 timeLapse.mp4
done
