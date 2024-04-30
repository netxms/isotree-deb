# Debian packages for isotree library

This repository contains the Debian packaging files for the [isotree library](https://github.com/netxms/isotree).

## Building the package

```sh
apt update && apt install build-essential git cmake debhelper-compat -y

# produce libisotree_0.6.1.orig.tar.gz from the upstream source
./make-dist.sh
# or even
# curl https://raw.githubusercontent.com/netxms/isotree-deb/main/make-dist.sh | sh

tar zxf libisotree_0.6.1.orig.tar.gz
cd libisotree-0.6.1
git clone https://github.com/netxms/isotree-deb debian
dpkg-buildpackage --no-sign
```
