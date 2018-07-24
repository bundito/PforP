#!/usr/bin/python3

import sys
import os
import os.path
import sqlite3
import shutil



conn = sqlite3.connect("/home/bundito/projects/PforP/pforp.db")
c = conn.cursor()

counter = 0
for row in c.execute('SELECT filename, vol_number FROM images'):
    img_name = row[0]
    volume = row[1]

    path = "/home/bundito/projects/PforP/volumesort/Originals/"

    checkfile = path + img_name
    # print(checkfile)

    if os.path.exists(checkfile):
        #print(checkfile)
        counter = counter + 1

        volDir = "/home/bundito/projects/PforP/volumesort/Official/Volume{}/" . format(volume)

        newfilename = volDir + img_name


        if os.path.isdir(volDir):
            shutil.copy(checkfile, newfilename)
        else:
            os.mkdir(volDir)
            shutil.copy(checkfile, newfilename)







print("{} images found" . format(counter))



