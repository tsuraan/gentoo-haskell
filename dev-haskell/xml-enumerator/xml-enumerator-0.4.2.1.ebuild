# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Pure-Haskell utilities for dealing with XML with the enumerator package."
HOMEPAGE="http://github.com/snoyberg/xml"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND="=dev-haskell/attoparsec-text-0.8*
		=dev-haskell/attoparsec-text-enumerator-0.2*
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-enumerator-0.2*
		<dev-haskell/data-default-0.4
		=dev-haskell/enumerator-0.4*
		=dev-haskell/failure-0.1*
		<dev-haskell/text-0.12
		=dev-haskell/transformers-0.2*
		=dev-haskell/xml-types-0.3*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( dev-haskell/hunit
			>=dev-haskell/hspec-0.8
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}
