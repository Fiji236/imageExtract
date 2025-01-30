#! /usr/bin/env bash

ffmpeg -r 30 -i "%03d.jpg" -c:v libx264 timeLapse.mp4
