#!/bin/bash
branch="$(git branch 2>/dev/null | cut -f 2 -d ' ')" 
rev="$(git rev-parse HEAD 2>/dev/null | cut -f 2 -d ' ')"

if [ "x${rev}" != "x" ]; then
	echo "#define VER_REV \"${branch}_r${rev}\"" > version.h
else
	echo "#define VER_REV \"UNKNOWN\"" > version.h
fi

