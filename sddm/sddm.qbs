import qbs 1.0

Product {
    name: "sddm"

    Depends { name: "lirideployment" }

    Group {
        name: "Theme"
        files: [
            "*.qml",
            "components/*.qml",
            "indicators/*.qml",
            "*.png",
            "images/*.png",
            "images/*.svg",
            "*.conf",
        ]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/sddm/themes/lirios"
        qbs.installSourceBase: "."
    }
}
