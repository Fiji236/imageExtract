#! /usr/bin/env bash

ffmpeg -i *.mkv -vf fps=1/30 %03d.jpg
