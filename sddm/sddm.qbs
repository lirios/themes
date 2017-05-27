import qbs 1.0

Product {
    name: "sddm"

    Depends { name: "lirideployment" }

    Group {
        name: "Theme"
        files: ["*.qml", "*.png", "*.conf"]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/sddm/themes/lirios"
    }

    Group {
        name: "Components"
        files: ["components/*.qml"]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/sddm/themes/lirios/components"
    }

    Group {
        name: "Indicators"
        files: ["indicators/*.qml"]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/sddm/themes/lirios/indicators"
    }

    Group {
        name: "Images"
        files: ["images/*.png", "images/*.svg"]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/sddm/themes/lirios/images"
    }
}
