import os
import sqlite3

import cv2
import numpy as np 
import random

# FuNCIONALISM AT IT FINEST

def count_colors(image):
    # def get_colors(file):
    file = image

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

# TOP_LEVEL LOOP (Volume Dirs)

i = 5
while i <= 12:
    #listdir  ="/"

    cwd = os.getcwd()

    listable = os.listdir(cwd + "\gauss\Volume5")

    print(listable())

    #extract_dir = os.listdir("C:\\Users\Scott Harvey\source\repos\PforP\gausss\Volume5")  
   
    # ONE YOU LOCK THE TARGET
    # send gaussians off for pixel average