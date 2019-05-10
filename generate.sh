#TODO add foreach in diagrams/CMakeLists.txt and images/CMakeLists.txt
#TODO fix tricking cmake via touch and removal of touched files below
#TODO top-level make depend on make for images which depends on make for diagrams
#TODO get rid of wierd target names artefactz, imagez?? and diagramz??

#normal
rm -rf build
mkdir build

# needed to trick cmake
mkdir build/diagrams
cd diagrams
for i in *pu; do
	touch `basename $i pu`svg
	touch ../build/diagrams/`basename $i pu`svg
done
cd ..

#normal
cd build
cmake ..
cd diagrams

# needed to trick cmake
rm -f *svg

#normal
make
cd ..
cd images
make
cd ..
make
