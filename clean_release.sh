#!/bin/bash

# RELEASE

# This script cleans the complete xit project using xmake.
# It assumes that xmake is installed and available in the PATH.

echo "*********cleaning xit*********"
xmake xit/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit. Exiting."
    exit 1
fi

echo "*********cleaning xit.Timers*********"
xmake xit.Timers/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Timers. Exiting."
    exit 1
fi

echo "*********cleaning xit.IO*********"
xmake xit.IO/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.IO. Exiting."
    exit 1
fi

echo "*********cleaning xit.Input*********"
xmake xit.Input/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Input. Exiting."
    exit 1
fi

echo "*********cleaning xit.Clipboard*********"
xmake xit.Clipboard/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Clipboard. Exiting."
    exit 1
fi

echo "*********cleaning xit.Security*********"
xmake xit.Security/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Security. Exiting."
    exit 1
fi

echo "*********cleaning xit.Threading*********"
xmake xit.Threading/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Threading. Exiting."
    exit 1
fi

echo "*********cleaning xit.Application*********"
xmake xit.Application/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Application. Exiting."
    exit 1
fi

echo "*********cleaning xit.Account*********"
xmake xit.Account/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Account. Exiting."
    exit 1
fi

echo "*********cleaning xit.Drawing*********"
xmake xit.Drawing/xmakefile.json clean --config Release

# Check build result and return if it fails
if [ $? -ne 0 ]; then
    echo "Build failed for xit.Drawing. Exiting."
    exit 1
fi
