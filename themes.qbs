import qbs 1.0

Project {
    name: "Themes"

    readonly property string version: "0.9.0"

    condition: qbs.targetOS.contains("linux") && !qbs.targetOS.contains("android")

    minimumQbsVersion: "1.8.0"

    references: [
        "colorschemes/colorschemes.qbs",
        "grub/grub.qbs",
        "plymouth/plymouth.qbs",
        "sddm/sddm.qbs",
    ]
}
