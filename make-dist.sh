#!/bin/sh

set -e

REVISION=86b8933
VERSION=0.6.1

WORKDIR=$(mktemp -d)
trap 'rm -rf "$WORKDIR"' EXIT

git clone --recursive https://github.com/netxms/isotree.git "$WORKDIR/libisotree-$VERSION"
cd "$WORKDIR/libisotree-$VERSION"
git checkout $REVISION
cd -
tar zcf libisotree_$VERSION.orig.tar.gz -C "$WORKDIR" --exclude='.git' --exclude='.github ' --exclude='._*' "libisotree-$VERSION"
