#include <Magick++.h>

#include <QString>
#include <QDir>
#include <QDirIterator>
#include <QElapsedTimer>
#include <QColor>

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

// RGB to HSV utility class (thanks internet!)

class RGB
{
public:
    unsigned char R;
    unsigned char G;
    unsigned char B;

    RGB(unsigned char r, unsigned char g, unsigned char b)
    {
        R = r;
        G = g;
        B = b;
    }

    bool Equals(RGB rgb)
    {
        return (R == rgb.R) && (G == rgb.G) && (B == rgb.B);
    }
};

class HSV
{
public:
    double H;
    double S;
    double V;

    HSV(double h, double s, double v)
    {
        H = h;
        S = s;
        V = v;
    }

    bool Equals(HSV hsv)
    {
        return (H == hsv.H) && (S == hsv.S) && (V == hsv.V);
    }
};

static double Min(double a, double b) {
    return a <= b ? a : b;
}

static double Max(double a, double b) {
    return a >= b ? a : b;
}

static HSV RGBToHSV(RGB rgb) {
    double delta, min;
    double h = 0, s, v;

    min = Min(Min(rgb.R, rgb.G), rgb.B);
    v = Max(Max(rgb.R, rgb.G), rgb.B);
    delta = v - min;

    if (v == 0.0)
        s = 0;
    else
        s = delta / v;

    if (s == 0)
        h = 0.0;

    else
    {
        if (rgb.R == v)
            h = (rgb.G - rgb.B) / delta;
        else if (rgb.G == v)
            h = 2 + (rgb.B - rgb.R) / delta;
        else if (rgb.B == v)
            h = 4 + (rgb.R - rgb.G) / delta;

        h *= 60;

        if (h < 0.0)
            h = h + 360;
    }

    return HSV(h, s, (v / 255));
}

// END of RGB and HSV classes


// START YER ENGINES
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

            cout << u_fullFile << endl;

            Image origImg(u_fullFile);

            Pixels view(origImg);


            // GRAB RANDOM PIXELS

            size_t colors = origImg.totalColors();

            cout << colors << " colors" << endl;

            Geometry imgSize = origImg.size();
            double dblH = imgSize.height();
            double dblW = imgSize.width();


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

            for(counter; counter < 20; counter++) {

                rX = rand() % (width - 1) + 0;
                rY = rand() % (height - 1) + 0;

                ColorRGB px = origImg.pixelColor(rX, rY);

                totalR += (px.red() * 255.0);
                totalG += (px.green() * 255.0);
                totalB += (px.blue() * 255.0);

            }

            double avgR = (totalR/20.0);
            double avgB = (totalB/20.0);
            double avgG = (totalG/20.0);

            cout << "RGB: " << avgR <<"-" << avgG << "-" << avgB << endl;

            // MATHIFY SOME HSV FROM RGB

            RGB data = RGB(avgR, avgG, avgB);
            HSV value = RGBToHSV(data);

            cout << "H " << value.H << "S " << value.S << "V " << value.V << endl;

        }

        // DATABASE INSERTION TIME!





    }
}


