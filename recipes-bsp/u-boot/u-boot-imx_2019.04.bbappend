PATCHTOOL = "git"

FILESEXTRAPATHS_prepend := "${THISDIR}:"

# SRC_URI += "file://0001-Set-fdt_file-to-custom-device-tree.patch "
# The patch above set device tree but uses env_set


SRC_URI += "file://0001-Set-fdt_file-to-custom-device-tree.patch "
SRC_URI += "file://0002-Update-default-device-tree-setup-method.patch "
