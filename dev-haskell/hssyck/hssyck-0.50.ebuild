# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

MY_PN="HsSyck"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Fast, lightweight YAML loader and dumper"
HOMEPAGE="http://hackage.haskell.org/package/hssyck"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/utf8-string-0.3
		>=dev-lang/ghc-6.8.2
		dev-libs/syck"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

S="${WORKDIR}/${MY_P}"
