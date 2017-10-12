import qbs 1.0

Product {
    name: "colorschemes"

    Depends { name: "lirideployment" }

    Group {
        name: "Color Schemes"
        files: [
            "Liri.colors",
            "LiriDark.colors",
        ]
        qbs.install: true
        qbs.installDir: lirideployment.dataDir + "/color-schemes"
        qbs.installSourceBase: "."
    }
}
