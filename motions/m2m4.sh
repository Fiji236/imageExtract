#! /bin/bash

ffmpeg -i *.mkv -map 0 -c copy -c:a aac *.mp4
