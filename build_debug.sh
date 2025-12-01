#!/bin/bash

# DEBUG

# This script builds the complete xit project using xmake.
# It assumes that xmake is installed and available in the PATH.
# It builds the project in its subdirectories.
# It also assumes that the xmakefile.json files are present in each subdirectory.

# The order of the build is important, as all projects depend on others (except xit).

echo "*********Building xit*********"
xmake xit/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit. Exiting."
    exit 1
fi

echo "*********Building xit.Timers*********"
xmake xit.Timers/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Timers. Exiting."
    exit 1
fi

echo "*********Building xit.IO*********"
xmake xit.IO/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.IO. Exiting."
    exit 1
fi

echo "*********Building xit.Input*********"
xmake xit.Input/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Input. Exiting."
    exit 1
fi

echo "*********Building xit.Clipboard*********"
xmake xit.Clipboard/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Clipboard. Exiting."
    exit 1
fi

echo "*********Building xit.Security*********"
xmake xit.Security/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Security. Exiting."
    exit 1
fi

echo "*********Building xit.Threading*********"
xmake xit.Threading/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Threading. Exiting."
    exit 1
fi

echo "*********Building xit.Application*********"
xmake xit.Application/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Application. Exiting."
    exit 1
fi

echo "*********Building xit.Account*********"
xmake xit.Account/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Account. Exiting."
    exit 1
fi

echo "*********Building xit.Window*********"
xmake xit.Window/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Window. Exiting."
    exit 1
fi

echo "*********Building xit.Drawing*********"
xmake xit.Drawing/xmakefile.json -c Debug

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Drawing. Exiting."
    exit 1
fi