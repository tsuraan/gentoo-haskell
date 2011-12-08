# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Asynchronous DNS Resolver"
HOMEPAGE="http://gitorious.org/hsdns"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND="dev-haskell/network
		>=dev-lang/ghc-6.8.2
		net-libs/adns"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
