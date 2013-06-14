# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Cello is a GNU99 C library which brings higher level programming to C."
HOMEPAGE="http://libcello.org/"
SRC_URI="http://libcello.org/static/libcello-${PV}.tar.gz"

LICENSE="BSD"

SLOT="0"

KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S=${WORKDIR}/lib${P}

src_configure() {
	econf
}

src_compile() {
	emake || die
}

src_install() {
	einstall || die
}
