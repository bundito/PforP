#!/bin/bash

mkdir -p dist

for vol in Vol* Goodies Propaganda-For-E ; do
	tar Icf dist/Propaganda-${vol}.tar.bz2 $vol
done
