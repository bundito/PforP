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

# def gaussify_img(img):

#         gray = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
#         blur = cv2.GaussianBlur(gray, (5,5), 0)

#         canny = cv2.Canny(blur, 50, 150)
      
#         plt.subplot(121),plt.imshow(img),plt.title('Original')
#         plt.xticks([]), plt.yticks([])
#         plt.subplot(122),plt.imshow(canny),plt.title('Blurred')
#         plt.xticks([]), plt.yticks([])
#         plt.show()



# FUNCTIONS ARE NOW EXTINCT - MAIN CODE BELOW

# LEVEL THE FIRST -- DIRECTORIES OF IMAGE


# read image
src = cv2.imread('Propaganda-JPEGs/Vol1/Add-N-To-X-1.JPG', cv2.IMREAD_UNCHANGED)
 
# apply guassian blur on src image
dst = cv2.GaussianBlur(src,(9063,9063),cv2.BORDER_DEFAULT)
 
# display input and output image
cv2.imshow("Gaussian Smoothing",np.hstack((src, dst)))
cv2.waitKey(0) # waits until a key is pressed
cv2.destroyAllWindows() # destroys the window showing image
       



