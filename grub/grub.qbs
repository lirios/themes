import qbs 1.0

Product {
    name: "grub"

    Group {
        name: "Theme"
        files: ["*.pf2", "*.png", "theme.txt"]
        qbs.install: true
        qbs.installDir: project.grubDir + "/themes/lirios"
    }
}
