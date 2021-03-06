# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:	$

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Creation of type-safe, RESTful web applications."
HOMEPAGE="http://www.yesodweb.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/hamlet-0.10*
		<dev-haskell/hjsmin-0.1
		=dev-haskell/http-types-0.6*
		=dev-haskell/monad-control-0.2*
		<dev-haskell/parsec-4
		=dev-haskell/shakespeare-css-0.10*
		=dev-haskell/shakespeare-js-0.10*
		=dev-haskell/shakespeare-text-0.10*
		=dev-haskell/text-0.11*
		>=dev-haskell/time-1.1.4
		=dev-haskell/transformers-0.2*
		<dev-haskell/unix-compat-0.4
		=dev-haskell/wai-0.4*
		=dev-haskell/wai-extra-0.4*
		=dev-haskell/warp-0.4*
		=dev-haskell/yesod-auth-0.7*
		=dev-haskell/yesod-core-0.9*
		=dev-haskell/yesod-form-0.3*
		=dev-haskell/yesod-json-0.2*
		=dev-haskell/yesod-persistent-0.2*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
