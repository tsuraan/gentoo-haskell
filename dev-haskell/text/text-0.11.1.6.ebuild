# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="An efficient packed Unicode text type."
HOMEPAGE="https://github.com/bos/text"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-haskell/deepseq-1.1.0.0
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/quickcheck-2.4.0.1
			<dev-haskell/test-framework-0.5
			<dev-haskell/test-framework-hunit-0.3
			<dev-haskell/test-framework-quickcheck2-0.3
		)"

src_prepare() {
	sed -e 's@deepseq                    >= 1.1 && < 1.2@deepseq                    >= 1.1 \&\& < 1.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	epatch "${FILESDIR}/${PN}-0.11.1.6-disable-tests-that-fail-in-non-latin1-locales.patch"
}

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
