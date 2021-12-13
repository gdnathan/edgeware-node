#!/bin/bash
SCRIPTDIR=$PWD

git submodule update --init --recursive

for d in $(ls -d ./pallets/*/) ; do
    cd "$SCRIPTDIR/$d" && cargo test
done
