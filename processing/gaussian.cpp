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

    int volCounter = 0;

    for (volCounter = 0; volCounter <= 14; volCounter++) {

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
            cout << u_newFile << endl;

            // RESIZE

            Image origImg(u_fullFile);
            Image dupImg(origImg);

            Geometry resizeRules;
            resizeRules.aspect(false);

            dupImg.resize("64x64");

            dupImg.write(u_newFile);

            // GAUSSIAN

/*            Image gaussImage(origImg);
            timer.start();
            gaussImage.gaussianBlur(128.0, 128.0);
            qint64 gaussTime;
            gaussTime = timer.elapsed();

            cout << "Gaussian time: " << gaussTime/1000.0 << "secs" << endl;
            timer.invalidate();

            string gaussFile = u_destDir + u_fileName  + "._gaussian.jpg";

            gaussImage.write(gaussFile);


            // GRAB RANDOM PIXELS

            Geometry imgSize = origImg.size();
            double dblH;
            double dblW;

            dblH = imgSize.height();
            dblW = imgSize.width();

            int height = static_cast<int>(dblH);
            int width = static_cast<int>(dblW);

            //cout << "X, Y: " << dblW << ", " << dblH << endl;

            int counter = 0;

            srand (rand());

                int rX;
                int rY;

            for(counter; counter < 5; counter++) {

                rX = rand() % (width - 1) + 0;
                rY = rand() % (height - 1) + 0;

                //cout << "X, Y: " << rX << ", " << rY << endl;

            }
*/
            filesWorked++;

        }
    }
}


