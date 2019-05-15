inherit kernel-resin

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append = " \
	file://0001-Revert-cgroup-Disable-cgroup-memory-by-default.patch \
	file://0002-wireless-wext-Bring-back-ndo_do_ioctl-fallback.patch \
	file://0003-leds-pca963x-Fix-MODE2-initialization.patch \
	file://0001-Add-npe-x500-m3-overlay.patch \
"

LINUX_VERSION = "4.14.91"
SRCREV = "22bb67b8e2e809d0bb6d435c1d20b409861794d2"

require common-config.inc

RESIN_CONFIGS_append = " preempt_rt"
RESIN_CONFIGS[preempt_rt] = " \
    CONFIG_PREEMPT_RT_FULL=y \
"
