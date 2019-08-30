# THIS IS... FOR FUN
# WITHOUT BELIEF

import sys

import sqlite3

from PySide2.QtWidgets import (QLineEdit, QPushButton, QApplication, QVBoxLayout, QDialog)

import cv2            
import numpy as np

image = cv2.imread("gaussian.jpg")

px = image[50,75]
print(px)

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

