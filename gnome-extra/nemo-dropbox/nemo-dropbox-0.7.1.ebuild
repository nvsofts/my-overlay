# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_{6,7} )

inherit autotools python-single-r1

DESCRIPTION="Dropbox extension for Nemo"
HOMEPAGE="https://github.com/linuxmint/nemo-extensions"
SRC_URI="https://github.com/linuxmint/nemo-extensions/archive/2.2.x.tar.gz -> nemo-dropbox-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="${PYTHON_DEPS}
	dev-python/pygtk[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

S=${WORKDIR}/nemo-extensions-2.2.x/${PN}/

src_prepare() {
	eautoreconf
}

pkg_preinst() {
	rm -rf ${D}/usr/bin
}
