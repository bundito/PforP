#!/bin/bash

tar jcvf ../Propaganda-JPEGs.tar.bz2 */*.jpg */*.JPG
tar --exclude *.jpg --exclude *.JPG -jcvf ../Propaganda-indices.tar.bz2 .

echo "Ready to download!"
echo "http://ira.abramov.org/Propaganda-JPEGs.tar.bz2"
echo "http://ira.abramov.org/Propaganda-indices.tar.bz2"
