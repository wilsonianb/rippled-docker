#!/bin/bash
set -e

if [ -z "$RIPPLED_REPO" ]; then
  RIPPLED_REPO='https://github.com/ripple/rippled.git'
fi

if [ -z "$RIPPLED_COMMIT" ]; then
  RIPPLED_COMMIT='develop'
fi

git clone $RIPPLED_REPO
cd rippled 
git checkout $RIPPLED_COMMIT
scons -j `nproc` --static

cp build/rippled /out/rippled
