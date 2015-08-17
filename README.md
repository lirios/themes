Hawaii theme for Plymouth
=========================

[![IRC Network](https://img.shields.io/badge/irc-freenode-blue.svg "IRC Freenode")](https://webchat.freenode.net/?channels=hawaii-desktop)
[![GitHub release](https://img.shields.io/github/release/hawaii-desktop/hawaii-plymouth-theme.svg)](https://github.com/hawaii-desktop/hawaii-plymouth-theme)
[![GitHub issues](https://img.shields.io/github/issues/hawaii-desktop/hawaii-plymouth-theme.svg)](https://github.com/hawaii-desktop/hawaii-plymouth-theme/issues)

This repository contains the Hawaii theme for Plymouth.

## Dependencies

In order to install this theme you need:

* [CMake](http://www.cmake.org)

## Installation

Assuming you are in the source directory, just create a build directory
and run cmake:

```sh
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/opt/hawaii ..
```

If not passed, the `CMAKE_INSTALL_PREFIX` parameter defaults to /usr/local.
You have to specify a path that fits your needs, /opt/hawaii is just an example.

Package maintainers would pass `-DCMAKE_INSTALL_PREFIX=/usr`.

Now type:

```sh
make install
```

from the build directory.
