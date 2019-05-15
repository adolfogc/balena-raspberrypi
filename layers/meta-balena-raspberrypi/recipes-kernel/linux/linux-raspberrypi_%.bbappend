inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-Revert-cgroup-Disable-cgroup-memory-by-default.patch \
	file://0002-wireless-wext-Bring-back-ndo_do_ioctl-fallback.patch \
	file://0003-leds-pca963x-Fix-MODE2-initialization.patch \
	file://0001-Add-npe-x500-m3-overlay.patch \
"

LINUX_VERSION = "4.14.98"
SRCREV = "5d63a4595d32a8505590d5fea5c4ec1ca79fd49d"

require common-config.inc
