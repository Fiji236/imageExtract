#! /bin/bash

ffmpeg -r 30 -pattern_type glob -i "*.jpg" -c:v libx264 -crf 17 tlapse.mp4
