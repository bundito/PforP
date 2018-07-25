#include <Magick++.h>

#include <QString>
#include <QDir>
#include <QDirIterator>
#include <QElapsedTimer>

#include <stdio.h>
#include <iostream>

#include <random>

#include <QDebug>

using namespace Magick;
using namespace std;

void createDir (QString dir) {

    // make the new volume directory
    QDir newDir;
    newDir.mkpath(dir);

}


int main(int argc,char **argv)
{

    // Literally magic Magick++ initalizer...
    InitializeMagick(*argv);

    QElapsedTimer timer;

    int volCounter = 2;

    for (volCounter = 2; volCounter <= 14; volCounter++) {

        cout << volCounter << endl;

        // Set some defaults
        //QDir baseDir;
        QDir baseDir;
        QString builtDir = QString("/home/bundito/projects/PforP/volumesort/Official/Volume%1").arg(volCounter);
        baseDir = builtDir;
        QString destBase = "/home/bundito/projects/PforP/Finished";


        cout << "baseDir: " << endl;

        baseDir.setFilter(QDir::Files | QDir::NoDotAndDotDot);

        QString volNum = QString("%1").arg(volCounter);

        QString destDir = destBase + "/Volume" + volNum + "/";
        QDir dDir(destDir);

        string u_destDir = destDir.toUtf8().constData();

        createDir(destDir);

        uint totalFiles = baseDir.count();
        uint filesWorked = 1;


        QDirIterator iter(baseDir);



        while (iter.hasNext()) {

            cout << "(" << filesWorked << "/" << totalFiles << ")" << endl;

            QString imgFile(iter.next());

            string u_fullFile;
            u_fullFile = imgFile.toUtf8().constData();

            string u_fileName;
            u_fileName = iter.fileName().toUtf8().constData();

            string u_origDir;
            u_origDir = imgFile.toUtf8().constData();

            string u_newFile;
            u_newFile = u_destDir + u_fileName  + "_thumbnail.jpg";

            //cout << u_fullFile << endl;
            cout << u_fullFile << endl;


            // GRAB RANDOM PIXELS

            Image origImg(u_fullFile);
            long colors = origImg.totalColors();

            cout << colors << " colors" << endl;

            Geometry imgSize = origImg.size();
            double dblH = imgSize.height();
            double dblW = imgSize.width();

            //cout << dblH << "x" << dblW;

            int height = static_cast<int>(dblH);
            int width = static_cast<int>(dblW);

            //cout << "X, Y: " << dblW << ", " << dblH << endl;

            int counter = 0;

            srand (rand());

                int rX;
                int rY;

                double totalR = 0.0;
                double totalG = 0.0;
                double totalB = 0.0;

            for(counter; counter < 5; counter++) {

                rX = rand() % (width - 1) + 0;
                rY = rand() % (height - 1) + 0;

                ColorRGB px = origImg.pixelColor(rX, rY);

                std::cout << "Pixel " << rX << "," << rY << " R: " << px.red() << " G: " << px.green() <<
                                            " B: " << px.blue() << std::endl;

                totalR += px.red();
                totalG += px.green();
                totalB += px.blue();


               // cout << "X, Y: " << rX << ", " << rY << endl;

            }

            cout << "Avg... R:" << (totalR/5.0) *100 << " G: " << (totalG/5.0) * 100 << " B: " << (totalB/5.0) * 100 << endl;

            filesWorked++;

        }
    }
}


