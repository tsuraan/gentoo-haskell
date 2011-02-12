# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="2"

CABAL_FEATURES="lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="WAI application for static serving"
HOMEPAGE="http://docs.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/blaze-html-0.4*
		<dev-haskell/file-embed-0.1
		<dev-haskell/time-1.3
		<dev-haskell/transformers-0.3
		=dev-haskell/unix-compat-0.2*
		=dev-haskell/wai-0.3*
		=dev-haskell/web-routes-0.23*
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"