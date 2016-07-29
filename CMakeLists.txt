project(Themes)

cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)
cmake_policy(VERSION 3.4.1)

# Instruct CMake to run moc and rrc automatically when needed
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# Apple-specific configuration
set(APPLE_SUPPRESS_X11_WARNING ON)

# Set version
set(PROJECT_VERSION "0.8.90")

# Macros
include(GNUInstallDirs)
include(FeatureSummary)

# Set up packaging
set(CPACK_PACKAGE_NAME "qmlos-themes")
set(CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set(CPACK_GENERATOR "TGZ")
set(CPACK_SET_DESTDIR FALSE)
set(CPACK_SOURCE_PACKAGE_FILE_NAME "${CPACK_PACKAGE_NAME}-${CPACK_PACKAGE_VERSION}")
set(CPACK_SOURCE_IGNORE_FILES "/build/;/.git;/*.user;/.tx/;~$;${CPACK_SOURCE_IGNORE_FILES}")
include(CPack)
add_custom_target(dist COMMAND ${CMAKE_MAKE_PROGRAM} package_source)

# Subdirectories
add_subdirectory(plymouth)

# Display featute summary
feature_summary(WHAT ALL FATAL_ON_MISSING_REQUIRED_PACKAGES)
