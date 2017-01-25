#!/bin/bash

BUILD_OUTPUT=$(pwd)/build-output
mkdir -p $BUILD_OUTPUT
LOG=$BUILD_OUTPUT/build.log

function build {
    cd src
    cmd //c build_ultibo.bat
    cd ../examples/corelib/aggcanvas
    mkdir units
    cmd //c build_ultibo.bat
    cd ../canvastest
    cmd //c build_ultibo.bat
    cd ../helloworld
    cmd //c build_ultibo.bat
    cd ../..
}

build |& tee $LOG
