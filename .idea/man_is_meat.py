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
        work_file = cv2.imread("../img")
        blur = cv2.blur(work_file,(5,5))

        plt.subplot(121),plt.imshow(work_file),plt.title('Original')
        plt.xticks([]), plt.yticks([])
        plt.subplot(122),plt.imshow(work_file),plt.title('Blurred')
        plt.xticks([]), plt.yticks([])
        plt.show()



# FUNCTIONS ARE NOW EXTINCT - MAIN CODE BELOW

# LEVEL THE FIRST -- DIRECTORIES OF IMAGES

dir_list = list_dirs("Propaganda-JPEGs/Vol1")



# for work_dir in dir_list:
#         print(work_dir)

print(dir_list)

#file_list = file_list(work_dir)

for process_file in dir_list:
        """ family = get_family(process_file)
        print(family)
 """
        print(process_file)

        #gaussed_file = gaussify_img(process_file)



