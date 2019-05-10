# Superfast modeling in PlantUML

![1a35443-awb-cur-squ-5120.jpg](1a35443-awb-cur-squ-5120.jpg?raw=true)


## Summary

Receiving for the hundredth time a vague drawing of a puppet with an arrow
pointing at a database? Failing to print on paper a schematic with a jungle of
rectangles and intersecting lines? Struggling to align parts of a schematic over
and over again? If you detest unclear functional or technical diagrams and
prefer clear and easy-to-make designs, this workshop is for you!

After refreshing your memory on the most useful diagrams in the modelling
language [UML](https://en.wikipedia.org/wiki/Unified_Modeling_Language), we will
start working with [PlantUML](http://plantuml.com). PlantUML is free and open
source software in which you describe your analysis or design in plain text.
With a push on a button this will subsequently be converted to quality UML
diagrams.

PlantUML supports various ways of working and several graphical output formats
such as PNG, SVG and PDF. By means of guided exercises and joint evaluations,
you will learn how to use PlantUML and discover its many advantages. Bring your
laptop or tablet. A laptop is preferred and you can already install PlantUML.
However, it is also possible to work online via a web interface.


## Workshops

This workshop has been given by the author at:
* March 30, 2017, [BEEA](https://www.beea.nl/berichten/bericht/2017/03/beea-37-leer-supersnel-modelleren-in-plantuml.html), Utrecht (Dutch version)
* May 11, 2019, [T-DSOSE](http://www.t-dose.org/node/1159), Eindhoven


## Building

The workshop can build by following the next steps.

Install the needed tools with:

    sudo apt-get install texlive-xetex cmake inkscape imagemagick npm
    sudo npm install -g svgo

Build the presentation with:

    mkdir build
    cd build
    cmake ..

Pending some issues with CMake, the current workaround is

    ./generate.sh

to buid `build/presentation.pdf`, instead of the three commands above.


## Sources

* [UML](http://uml.org)
    * [logo](https://commons.wikimedia.org/wiki/File:UML_logo.svg)
* [PlantUML](http://plantuml.com)
    * [logo](http://plantuml.com/Logo_PlantUML.svg)
* [Wikipedia](https://en.wikipedia.org)
    * [Unified Modeling Language](https://en.wikipedia.org/wiki/Unified_Modeling_Language)
* [Commons WikiMedia](https://commons.wikimedia.org)
    * [picture swimming pool locker]((https://commons.wikimedia.org/wiki/File:HK_CWB_%E7%B6%AD%E5%A4%9A%E5%88%A9%E4%BA%9E%E5%85%AC%E5%9C%92%E6%B8%B8%E6%B3%B3%E6%B1%A0_old_Victoria_Park_Swimming_Pool_%E7%94%B7%E6%9B%B4%E8%A1%A3%E5%AE%A4_Changing_Room_locker_boxes_interior_Sept-2013.JPG)
* [Flickr](https://flickr.com)
    * [picture dish](https://flickr.com/photos/30478819@N08/44587183590)
    * [picture teapot](https://flickr.com/photos/maunzy/5202257983)
    * [picture 1a35443](https://www.flickr.com/photos/library_of_congress/2179123779)
