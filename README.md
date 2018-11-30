Themes
======

[![License](https://img.shields.io/badge/license-GPLv3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release](https://img.shields.io/github/release/lirios/themes.svg)](https://github.com/lirios/themes)
[![Build Status](https://travis-ci.org/lirios/themes.svg?branch=develop)](https://travis-ci.org/lirios/themes)
[![GitHub issues](https://img.shields.io/github/issues/lirios/themes.svg)](https://github.com/lirios/themes/issues)
[![Maintained](https://img.shields.io/maintenance/yes/2018.svg)](https://github.com/lirios/themes/commits/develop)

Themes for uniform look and feel throghout Liri OS.

## Dependencies

The following modules and their dependencies are required:

 * [cmake](https://gitlab.kitware.com/cmake/cmake) >= 3.10.0
 * [cmake-shared](https://github.com/lirios/cmake-shared.git) >= 1.0.0

Runtime dependencies for the Plymouth theme:

 * [plymouth](https://cgit.freedesktop.org/plymouth/)

Runtime dependencies for the Grub theme:

 * [grub](http://savannah.gnu.org/git/?group=grub)

Runtime dependencies for the SDDM theme:

 * [sddm](https://github.com/sddm/sddm)
 * [fluid](https://github.com/lirios/fluid)
 * [shell](https://github.com/lirios/shell)

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
