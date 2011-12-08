# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="High performance, regular, shape polymorphic parallel arrays."
HOMEPAGE="http://repa.ouroborus.net"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/quickcheck-2.3
		=dev-haskell/vector-0.9*
		>=dev-lang/ghc-6.12.3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@base                 == 4.4.\*@base                 >= 4.3 \&\& < 5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
	# ghc 7.0.4 does not define forkOn, use forkOnIO like repa version 2.1.1.6 used to use
	sed -e 's@forkOn@forkOnIO@g' \
		-i "${S}/Data/Array/Repa/Internals/Gang.hs"
}
