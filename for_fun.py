# THIS IS... FOR FUN
# WITHOUT BELIEF

import sys

import sqlite3

from PySide2.QtWidgets import (QLineEdit, QPushButton, QApplication, QVBoxLayout, QDialog)
from PySide2.QtGui import (QPoint, QPolygon)

import random

import cv2            
import numpy as np

image = cv2.imread("gaussian.jpg")

i = 0
all_b = 0
all_g = 0
all_r = 0

while i < 5:
    rnd_x = random.randint(0,511)
    rnd_y = random.randint(0,511)

    px = image[rnd_x, rnd_y]

    all_b += px[0]
    all_g += px[1]
    all_r += px[2]

    i += 1

print("R: ", all_r / 5)
print("G: ", all_g / 5)
print("B: ", all_b / 5) 

"""
try:
    conn = sqlite3.connect('./pforp.db')
    curs = conn.cursor()

    print("sqlite connected")

    query = "select count() from images"

    curs.execute(query)

    print (curs.fetchone())


except sqlite3.Error as error:
    print("Error while connecting to sqlite", error)
finally:
    if (conn):
        conn.close()
        print("The SQLite connection is closed")
 """

class MyWidget(QtWidgets.QWidget):
    def __init__(self):
        super().__init__()

        

        self.polygon = QPolygon()
        self.polygon << QPoint(10, 20) << QPoint(20, 30)

        self.layout = QWidgets.QVBoxLayout
        self.layout.addWidget(polygon)

if __name__ == "__main__":
    app = QApplication(sys.argv)

    widget = MyWidget()
    widget.resize(800, 600)
    widget.show()

    sys.exit(app.exec_())