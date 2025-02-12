#!/bin/bash

# source ../../load_modules.sh

# build_dir="./build-$(date +%Y-%m-%d-%H:%M)" # FIXME: using this build path makes it fail...
# build_dir="./build"

# autoconf configure.ac

# mkdir -p ${build_dir}
# cd ${build_dir}
# make

export CC=mpicc

aclocal
autoconf
autoheader
automake --add-missing
./configure --prefix=/users/juananto/project_465000412/juananto/software/c-lime/build
make install
