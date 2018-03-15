#!/usr/bin/python3

import os
import sys
from sklearn.cluster import KMeans
import cv2
import numpy as np
import time


def rgb2hsv(r, g, b):
    r, g, b = r / 255.0, g / 255.0, b / 255.0
    mx = max(r, g, b)
    mn = min(r, g, b)
    df = mx - mn
    if mx == mn:
        h = 0
    elif mx == r:
        h = (60 * ((g - b) / df) + 360) % 360
    elif mx == g:
        h = (60 * ((b - r) / df) + 120) % 360
    elif mx == b:
        h = (60 * ((r - g) / df) + 240) % 360
    if mx == 0:
        s = 0
    else:
        s = df / mx
    v = mx
    return h, s, v

def centroid_histogram(clusters):
	numLabels = np.arange(0, len(np.unique(clusters.labels_)) + 1)
	(hist, _) = np.histogram(clusters.labels_, bins = numLabels)

	# normalize the histogram, such that it sums to one
	hist = hist.astype("float")
	hist /= hist.sum()

	# return the histogram
	return hist

starttime = time.time()

print("\nStarting run at {}\n" . format(time.asctime()))

workdir = sys.argv[1]
filelist = os.listdir(workdir)

imagecount = 1

for image in filelist:

    imagename = image

    print("Image: {}".format(imagename))

    # load the image and convert it to RGB
    image = cv2.imread(image)
    image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

    # break down the image into one long list of pixels
    image = image.reshape((image.shape[0] * image.shape[1], 3))

    # perform KMeans clustering
    clusters = KMeans(n_clusters=3)
    clusters.fit(image)

    histogram = centroid_histogram(clusters)

    colors = []
    for (percent, color) in zip(histogram, clusters.cluster_centers_):
        r = int(color[0])
        g = int(color[1])
        b = int(color[2])
        h, s, v = rgb2hsv(r, g, b)
        percent = round(percent, 4)
        h = round(h, 4)
        s = round(s, 4)
        v = round(v, 4)
        colorlist = [percent, r, g, b, h, s, v]
        colors.append(colorlist)

    colors.sort(reverse=True)


    for color in colors:
        percent, r, g, b, h, s, v = color
        print("Percent {} / ColorRGB {} {} {} / ColorHSV {} {} {}".format(percent, r, g, b, h, s, v))
    print("\n")

    imagecount = imagecount + 1

endtime = time.time()
elapsed = round((endtime - starttime), 2)
print("Done.")
print("Processed {} images in {} seconds" . format(imagecount, elapsed))
print("\n")
