# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit eutils linux-mod

DESCRIPTION="marisa kernel module"
HOMEPAGE="http://www.kirisame.info/"
SRC_URI="http://www.kirisame.info/marisa_module/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="-* ~x86 ~amd64"
IUSE="kernel_linux"
RESTRICT="strip"

DEPEND="virtual/linux-sources"
RDEPEND="${DEPEND}"

pkg_setup() {
	linux-mod_pkg_setup
	MODULE_NAMES="marisa(misc:${S})"
	BUILD_PARAMS="V=1 SYSSRC=${KV_DIR} SYSOUT=${KV_OUT_DIR} CC=$(tc-getBUILD_CC)"
}

src_prepare() {
	convert_to_m "${S}"/Makefile
}

src_compile() {
	linux-mod_src_compile
}

pkg_preinst() {
	linux-mod_pkg_preinst
}

src_install() {
	linux-mod_src_install
}

pkg_postinst() {
	linux-mod_pkg_postinst
}

pkg_postrm() {
	linux-mod_pkg_postrm
}
