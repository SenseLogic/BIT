#!/bin/sh
set -x
dmd -m64 bit.d
rm *.o
