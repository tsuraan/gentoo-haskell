# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.9

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Efficient conversion of values into readable byte strings."
HOMEPAGE="http://code.haskell.org/~dolio/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/binary-0.6
		>=dev-lang/ghc-6.12"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
