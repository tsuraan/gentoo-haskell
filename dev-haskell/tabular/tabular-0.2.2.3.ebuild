# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Two-dimensional data tables with rendering functions"
HOMEPAGE="http://patch-tag.com/r/kowey/tabular"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="=dev-haskell/csv-0.1*
		=dev-haskell/html-1*
		<dev-haskell/mtl-2.1
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		dev-haskell/cabal"
