import qbs 1.0

Project {
    name: "Themes"

    readonly property string version: "0.9.0"

    minimumQbsVersion: "1.8.0"

    references: [
        "grub/grub.qbs",
        "plymouth/plymouth.qbs",
        "sddm/sddm.qbs",
    ]
}
