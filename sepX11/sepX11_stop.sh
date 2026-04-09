#!/bin/bash
# Script for stopping currently running X11 session in a console specified in the argument
# Copyright (C) 2006 Md Imam Hossain
# This script is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY. 
echo "Stopping X11 server currently running in console $1"
DISPLAY=:$1 pkill Xorg
exit 0

