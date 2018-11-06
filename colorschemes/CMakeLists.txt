file(GLOB _files "*.colors")
install(FILES ${_files} DESTINATION "${INSTALL_DATADIR}/color-schemes")
