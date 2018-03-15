# USAGE
# python color_kmeans.py --image images/jp.png --clusters 3

# import the necessary packages
from sklearn.cluster import KMeans
import matplotlib.pyplot as plt
import argparse
import utils
import cv2
import numpy as np
import math


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

def centroid_histogram(clt):
	# grab the number of different clusters and create a histogram
	# based on the number of pixels assigned to each cluster
	numLabels = np.arange(0, len(np.unique(clt.labels_)) + 1)
	(hist, _) = np.histogram(clt.labels_, bins = numLabels)

	# normalize the histogram, such that it sums to one
	hist = hist.astype("float")
	hist /= hist.sum()

	# return the histogram
	return hist


# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", required=True, help="Path to the image")
ap.add_argument("-c", "--clusters", required=True, type=int,
                help="# of clusters")
args = vars(ap.parse_args())

# load the image and convert it to RGB
image = cv2.imread(args["image"])
image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)

# break down the image into one long list of pixels
image = image.reshape((image.shape[0] * image.shape[1], 3))

# perform KMeans clustering
clusters = KMeans(n_clusters=args["clusters"])
clusters.fit(image)

histogram = centroid_histogram(clusters)

colors = []
for (percent, color) in zip(histogram, clusters.cluster_centers_):
    r = int(color[0])
    g = int(color[1])
    b = int(color[2])
    h, s, v = rgb2hsv(r, g, b)
    colorlist = [percent, r, g, b, h, s, v]
    colors.append(colorlist)

colors.sort(reverse=True)

print("Image: {}" . format)
for color in colors:
    percent, r, g, b, h, s, v = color
    print("Percent {} / ColorRGB {} {} {} / ColorHSV {} {} {}".format(percent, r, g, b, h, s, v))