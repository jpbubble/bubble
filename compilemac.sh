# A quick script

BUB=bubble
BUBSRC=github.com/jpbubble/bubble

echo Compiling $BUB
go build -o tempbuild4mac "$BUBSRC"
echo Preparing sdl library
otool -L tempbuild4mac
install_name_tool -change /usr/local/lib/libSDL2-2.0.0.dylib @executable_path/../Frameworks/libSDL2-2.0.0.dylib tempbuild4mac

echo Creating application $BUB.app
mkdir -p bin/"$BUB.app"/Contents
mkdir -p bin/"$BUB.app"/Contents/{MacOS,Frameworks}
echo Copying contents into $BUB.app
cp tempbuild4mac bin/"$BUB.app"/Contents/MacOS/"$BUB"
cp /usr/local/lib/libSDL2-2.0.0.dylib bin/"$BUB.app"/Contents/Frameworks


# Just a quick script to do it. It's far from perfect, but it's something ;)
# Please note only use this script for building for Mac. It's not really useable for the other platforms :P

