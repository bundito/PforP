import os
import sqlite3

import cv2
import numpy as np 
import random

# FuNCIONALISM AT IT FINEST

def get_colors(file):
    
    image = cv2.imread(file)

    i = 0
    all_b = 0
    all_g = 0
    all_r = 0

    while i < 10:
        rnd_x = random.randint(0,511)
        rnd_y = random.randint(0,511)

        px = image[rnd_x, rnd_y]

        all_b += px[0]
        all_g += px[1]
        all_r += px[2]

        i += 1

    print("R: ", all_r / 10)
    print("G: ", all_g / 10)
    print("B: ", all_b / 10) 

    colors = [all_r, all_g, all_b]

    return colors



gauss_thumb_dir = "ThumbsGauss"

# TOP_LEVEL LOOP (Volume Dirs)

i = 0
while i <= 11:
    extract_dir = gauss_thumb_dir + "/Volume" + str(i)
   
    extract_files = os.listdir(extract_dir)

    # ONE YOU LOCK THE TARGET
    # send gaussians off for pixel averageing
    i += 1