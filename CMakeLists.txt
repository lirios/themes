cmake_minimum_required(VERSION 3.10.0)

project("Themes"
    VERSION "0.9.0"
    DESCRIPTION "Liri themes"
    LANGUAGES NONE
)

## Shared macros and functions:
if(NOT LIRI_LOCAL_ECM)
    find_package(LiriCMakeShared "1.0.0" REQUIRED NO_MODULE)
    list(APPEND CMAKE_MODULE_PATH "${LCS_MODULE_PATH}")
endif()

## Liri specific setup common for all modules:
include(LiriSetup)

## Grub directory
set(INSTALL_GRUBDIR "boot/grub" CACHE PATH "Grub [boot/grub]")

## Add subdirectories:
add_subdirectory(colorschemes)
add_subdirectory(grub)
add_subdirectory(plymouth)
add_subdirectory(sddm)
