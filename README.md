Themes
======

[![ZenHub.io](https://img.shields.io/badge/supercharged%20by-zenhub.io-blue.svg)](https://zenhub.io)

[![License](https://img.shields.io/badge/license-GPLv3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release](https://img.shields.io/github/release/lirios/themes.svg)](https://github.com/lirios/themes)
[![Build Status](https://travis-ci.org/lirios/themes.svg?branch=develop)](https://travis-ci.org/lirios/themes)
[![GitHub issues](https://img.shields.io/github/issues/lirios/themes.svg)](https://github.com/lirios/themes/issues)
[![Maintained](https://img.shields.io/maintenance/yes/2016.svg)](https://github.com/lirios/themes/commits/develop)

Themes for uniform look and feel throghout Liri OS.

## Dependencies

 * [cmake](https://cmake.org)

## Installation

From the root of the repository, run:

```sh
mkdir build; cd build
cmake ..
make
make install # use sudo if necessary
```

On the `cmake` line, you can specify additional configuration parameters:

 * `-DCMAKE_INSTALL_PREFIX=/path/to/install` (for example, `/opt/liri` or `/usr`)

## Licensing

Licensed under the terms of the GNU General Public License version 3 or,
at your option, any later version.
