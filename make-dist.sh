#!/bin/sh

set -e

REVISION=67ff185cfb09700f910534ab9914d29bfe6a60b4
VERSION=0.6.1

WORKDIR=$(mktemp -d)
trap 'rm -rf "$WORKDIR"' EXIT

git clone --recursive https://github.com/netxms/isotree.git "$WORKDIR/libisotree-$VERSION"
cd "$WORKDIR/libisotree-$VERSION"
git checkout $REVISION
cd -
tar zcf libisotree_$VERSION.orig.tar.gz -C "$WORKDIR" --exclude='.git' --exclude='.github ' --exclude='._*' "libisotree-$VERSION"
