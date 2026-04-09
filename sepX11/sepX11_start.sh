#!/bin/bash
# Script for starting a new X11 server in a console specified in the first argument with the settings specified in the file specified in argument two
# Copyright (C) 2006 Md Imam Hossain
# This script is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY. 
echo "Starting a new X11 server in console $1 using settings from $2"  
Xorg :$1 -config $2 vt$1
echo "Finished X11 session in console $1"
exit 0

