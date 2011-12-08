# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="library for computation automorphism group and canonical labelling of a graph"
HOMEPAGE="http://hackage.haskell.org/package/hgal"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		dev-haskell/cabal"

src_prepare() {
	sed -e 's@mtl >= 2@mtl >= 1@' \
		-e 's@containers >= 0.4@containers >= 0.3@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependences"
}
