#!/bin/sh
set -x
cp _gitignore .gitignore
cat .gitignore
../bit --split 500k --verbose
../bit --join
cat .gitignore
rm .gitignore
