#!/bin/sh
set -x
../bit --split 500k
../bit --join
