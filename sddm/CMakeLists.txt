install(DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/"
        DESTINATION "${INSTALL_DATADIR}/sddm/themes/lirios/"
        PATTERN "CMakeLists.txt"
        PATTERN "sddm.qbs" EXCLUDE)
