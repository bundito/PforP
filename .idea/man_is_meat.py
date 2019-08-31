import os
import sys
import sqlite3
import cv2
import numpy as np
from matplotlib import pyplot as plt


# MAN IS MEAT

def list_dirs(path):
        output = [dI for dI in os.listdir(path) if os.path.isdir(os.path.join(path,dI))]
        return output

""" def get_family(img):
        family = img[-2:]
        return family """

def gaussify_img(img):

        blur = cv2.GaussianBlur(img,(5,5),0)

        plt.subplot(121),plt.imshow(img),plt.title('Original')
        plt.xticks([]), plt.yticks([])
        plt.subplot(122),plt.imshow(img),plt.title('Blurred')
        plt.xticks([]), plt.yticks([])
        plt.show()



# FUNCTIONS ARE NOW EXTINCT - MAIN CODE BELOW

# LEVEL THE FIRST -- DIRECTORIES OF IMAGE



# for work_dir in dir_list:
#         print(work_dir)

work_dir = "Propaganda-JPEGs/Vol1"
work_files = os.listdir(work_dir)

for process_file in work_files:
        """ family = get_family(process_file)
        print(family)
 """
        print(process_file)

        gaussed_file = gaussify_img(process_file)



