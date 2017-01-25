#!/bin/bash
cd src
cmd //c build_ultibo.bat
cd ../examples/corelib/aggcanvas
mkdir units
cmd //c build_ultibo.bat
cd ../canvastest
cmd //c build_ultibo.bat
cd ../helloworld
cmd //c build_ultibo.bat
