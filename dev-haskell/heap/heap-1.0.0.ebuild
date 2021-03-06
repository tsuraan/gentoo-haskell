# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Heaps in Haskell"
HOMEPAGE="http://hackage.haskell.org/package/heap"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( =dev-haskell/quickcheck-2* )
		>=dev-haskell/cabal-1.2.3"

src_prepare() {
	cd "${S}"
	if has_version ">=dev-haskell/quickcheck-2.4"; then
		epatch "${FILESDIR}/${P}-quickcheck-2.4.patch"
	fi
}

src_configure() {
	cabal_src_configure $(cabal_flag test Test)
}
