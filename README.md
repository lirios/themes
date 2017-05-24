Themes
======

[![ZenHub.io](https://img.shields.io/badge/supercharged%20by-zenhub.io-blue.svg)](https://zenhub.io)

[![License](https://img.shields.io/badge/license-GPLv3.0-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release](https://img.shields.io/github/release/lirios/themes.svg)](https://github.com/lirios/themes)
[![Build Status](https://travis-ci.org/lirios/themes.svg?branch=develop)](https://travis-ci.org/lirios/themes)
[![GitHub issues](https://img.shields.io/github/issues/lirios/themes.svg)](https://github.com/lirios/themes/issues)
[![Maintained](https://img.shields.io/maintenance/yes/2017.svg)](https://github.com/lirios/themes/commits/develop)

Themes for uniform look and feel throghout Liri OS.

## Dependencies

Runtime dependencies for the Plymouth theme:

 * [plymouth](https://cgit.freedesktop.org/plymouth/)

Runtime dependencies for the Grub theme:

 * [grub](http://savannah.gnu.org/git/?group=grub)

Runtime dependencies for the SDDM theme:

 * [sddm](https://github.com/sddm/sddm)
 * [fluid](https://github.com/lirios/fluid)
 * [shell](https://github.com/lirios/shell)

## Installation

Qbs is a new build system that is much easier to use compared to qmake or CMake.

If you want to learn more, please read the [Qbs manual](http://doc.qt.io/qbs/index.html),
especially the [setup guide](http://doc.qt.io/qbs/configuring.html) and how to install artifacts
from the [installation guide](http://doc.qt.io/qbs/installing-files.html).

From the root of the repository, run:

```sh
qbs setup-toolchains --type gcc /usr/bin/g++ gcc
qbs setup-qt /usr/bin/qmake-qt5 qt5
qbs config profiles.qt5.baseProfile gcc
qbs -d build -j $(nproc) profile:qt5 # use sudo if necessary
```

On the last `qbs` line, you can specify additional configuration parameters at the end:

 * `qbs.installRoot:/path/to/install` (for example `/` for a system-wide installation)

If you specify `qbs.installRoot` you might need to prefix the entire line with `sudo`,
depending on whether you have permissions to write there or not.

## Licensing

Licensed under the terms of the GNU General Public License version 3 or,
at your option, any later version.
