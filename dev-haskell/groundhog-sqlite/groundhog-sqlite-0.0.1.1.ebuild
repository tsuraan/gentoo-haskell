# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Backend for the groundhog library using sqlite3."
HOMEPAGE="http://hackage.haskell.org/package/groundhog-sqlite"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/enumerator-0.4*
		=dev-haskell/groundhog-0.0*
		=dev-haskell/monad-control-0.2*
		=dev-haskell/pool-0.1*
		=dev-haskell/transformers-0.2*
		=dev-haskell/utf8-string-0.3*
		>=dev-lang/ghc-7.0.3
		>=dev-db/sqlite-3.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.10"