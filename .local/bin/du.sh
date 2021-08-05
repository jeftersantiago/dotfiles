#!/bin/sh
# Prints the directory size in a nice way
du -ch $1$2 | grep total |  awk {'print  $1'}
