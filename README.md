Themes
======

[![License](https://img.shields.io/badge/license-GPLv3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release](https://img.shields.io/github/release/lirios/themes.svg)](https://github.com/lirios/themes)
[![GitHub issues](https://img.shields.io/github/issues/lirios/themes.svg)](https://github.com/lirios/themes/issues)
[![CI](https://github.com/lirios/themes/workflows/CI/badge.svg?branch=develop)](https://github.com/lirios/themes/actions?query=workflow%3ACI)

Themes for uniform look and feel throghout Liri OS.

## Dependencies

The following modules and their dependencies are required:

 * [cmake](https://gitlab.kitware.com/cmake/cmake) >= 3.10.0
 * [cmake-shared](https://github.com/lirios/cmake-shared.git) >= 2.0.0

Runtime dependencies for the Plymouth theme:

 * [plymouth](https://cgit.freedesktop.org/plymouth/)

Runtime dependencies for the Grub theme:

 * [grub](http://savannah.gnu.org/git/?group=grub)

## Installation

```sh
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/path/to/prefix ..
make
make install # use sudo if necessary
```

Replace `/path/to/prefix` to your installation prefix.
Default is `/usr/local`.

## Licensing

Licensed under the terms of the GNU General Public License version 3 or,
at your option, any later version.
