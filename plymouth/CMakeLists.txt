set(THEME_DIR ${CMAKE_INSTALL_FULL_DATADIR}/plymouth/themes/hawaii)

configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/hawaii.plymouth.in"
    "${CMAKE_CURRENT_BINARY_DIR}/hawaii.plymouth"
    IMMEDIATE @ONLY)

set(FILES
    box.png
    bullet.png
    entry.png
    lock.png
    animation-0001.png
    animation-0002.png
    animation-0003.png
    animation-0004.png
    animation-0005.png
    animation-0006.png
    animation-0007.png
    animation-0008.png
    animation-0009.png
    animation-0010.png
    animation-0011.png
    animation-0012.png
    animation-0013.png
    animation-0014.png
    animation-0015.png
    animation-0016.png
    animation-0017.png
    animation-0018.png
    animation-0019.png
    animation-0020.png
    animation-0021.png
    animation-0022.png
    animation-0023.png
    animation-0024.png
    animation-0025.png
    animation-0026.png
    animation-0027.png
    animation-0028.png
    animation-0029.png
    animation-0030.png
    animation-0031.png
    animation-0032.png
    animation-0033.png
    animation-0034.png
    animation-0035.png
    animation-0036.png
    throbber-0001.png
    throbber-0002.png
    throbber-0003.png
    throbber-0004.png
    throbber-0005.png
    throbber-0006.png
    throbber-0007.png
    throbber-0008.png
    throbber-0009.png
    throbber-0010.png
)

install(FILES ${FILES} DESTINATION ${THEME_DIR})
install(FILES "${CMAKE_CURRENT_BINARY_DIR}/hawaii.plymouth"
        DESTINATION ${THEME_DIR})

install(FILES noise-100-45-5.png
        DESTINATION ${THEME_DIR} RENAME background-tile.png)
#install(FILES logo.png
#        DESTINATION ${THEME_DIR} RENAME header-image.png)
