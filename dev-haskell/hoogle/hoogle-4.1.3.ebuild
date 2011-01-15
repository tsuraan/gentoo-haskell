# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.10

EAPI="2"
CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell API Search"
HOMEPAGE="http://www.haskell.org/hoogle/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/binary
		=dev-haskell/cabal-1.10*
		=dev-haskell/cmdargs-0.6*
		=dev-haskell/haskell-src-exts-1.9*
		>=dev-haskell/http-4000.0
		=dev-haskell/network-2.3*
		>=dev-haskell/parsec-2.1
		dev-haskell/safe
		=dev-haskell/tagsoup-0.12*
		dev-haskell/time
		=dev-haskell/transformers-0.2*
		=dev-haskell/uniplate-1.6*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	# Loosen dependency on parsec
	sed -i -e "s/parsec == 2.1.*,/parsec >= 2.1,/" \
		"${S}/${PN}.cabal" \
		|| die "Could not loosen deps on parsec"
}