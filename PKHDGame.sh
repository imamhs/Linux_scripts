#!/bin/sh
# Painkiller Hell & Damnation Linux launch script

# allow forcing a specific architecture by via the ARCH env var (i386 or x86_64)
if [ -z "$ARCH" ]; then
	ARCH=$(uname -m)
fi

if [ "$ARCH" = "x86_64" ]; then
	BINDIR=Linux64
	ARCHDIR1=amd64
	ARCHDIR2=x86_64-linux-gnu
else
	# fall back to 32bit
	BINDIR=Linux32
	ARCHDIR1=i386
	ARCHDIR2=i386-linux-gnu
	# some NVIDIA-based systems may fail to find the 32-bit libGL.so.1
	LD_LIBRARY_PATH="/usr/lib32:/usr/lib/i386-linux-gnu/:${LD_LIBRARY_PATH}"
fi

BINARY=PKHDGame
if [ ! -z "$CONFIGURATION" ]; then
	BINARY="$BINARY-$BINDIR-$CONFIGURATION"
fi

BACKDIR=$(pwd)
cd Binaries/$BINDIR
LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH" $DEBUGGER ./$BINARY -seekfreeloadingpcconsole $@
# save the return code so that we may forward it
retval=$?
cd "$BACKDIR"
exit $retval
