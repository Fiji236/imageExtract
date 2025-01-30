#! /bin/bash

mkdir original_images
mv *.jpg images 
tar -czvf images.tar.gz images
