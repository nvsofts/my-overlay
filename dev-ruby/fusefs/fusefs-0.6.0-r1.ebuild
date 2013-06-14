# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=2
USE_RUBY="ruby19"

inherit ruby-ng

IUSE=""
DESCRIPTION="Define file systems right in Ruby"
HOMEPAGE="http://rubyforge.org/projects/fusefs/"
SRC_URI="http://rubyforge.org/frs/download.php/7830/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="${DEPEND} >=sys-fs/fuse-2.3"

all_ruby_prepare() {
	epatch "${FILESDIR}/${P}-ruby19.patch"
}

each_ruby_configure() {
	${RUBY} setup.rb config --prefix=/usr || die
	${RUBY} setup.rb setup || die
}

each_ruby_install() {
	${RUBY} setup.rb config --prefix="${D}/usr" || die
	${RUBY} setup.rb install || die
}

all_ruby_install() {
	dodoc API.txt Changes.txt README.txt TODO || die

	insinto /usr/share/doc/${PF}
	doins -r sample || die
}

