#!/bin/bash
# Script for fixing Exile III: Ruined World Linux launch setup and scripts 
# Copyright (C) 2006 Md Imam Hossain
# This script is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY. 

# fix exile3-fullscreen-x-clients launch script
sed -i '9c\export DISPLAY=:$1' exile3-fullscreen-x-clients
sed -i '10c\EXILE_PATH=/home/emam/exile3 ./exile3-icewm &' exile3-fullscreen-x-clients
sed -i '13c\./exile3 -fullscreen -display :$1' exile3-fullscreen-x-clients

# fix setup and generated launch scripts
sed -i '128d' setup
sed -i '128c\print OUT "export EXILE_PATH=$path\\n";' setup
sed -i '129c\print OUT "export LD_LIBRARY_PATH=\\$EXILE_PATH:\\$LD_LIBRARY_PATH\\n";' setup
sed -i '130c\print OUT "export LD_PRELOAD=./fonts_hook_x11.so\\n";' setup
sed -i '131c\print OUT "./exile3-binary \\$* > /dev/null 2>&1\\n";' setup

sed -i '141d' setup
sed -i '141c\\tprint OUT "export EXILE_PATH=$path\\n";' setup
sed -i '142c\\tprint OUT "export LD_LIBRARY_PATH=\\$EXILE_PATH:\\$LD_LIBRARY_PATH\\n";' setup
sed -i '143c\\tprint OUT "export LD_PRELOAD=./fonts_hook_x11.so\\n";' setup
sed -i '144c\\tprint OUT "\$EXILE_PATH/exile3-fullscreen-binary \\$* > /dev/null 2>&1\\n";' setup

sed -i '150d' setup
sed -i '150c\print OUT "export EXILE_PATH=$path\\n";' setup
sed -i '151c\print OUT "export LD_LIBRARY_PATH=\\$EXILE_PATH:\\$LD_LIBRARY_PATH\\n";' setup
sed -i '152c\print OUT "export LD_PRELOAD=./fonts_hook_x11.so\\n";' setup
sed -i '153c\print OUT "./exile3ed-binary \\$* > /dev/null 2>&1\\n";' setup

echo "Patch complete!"
