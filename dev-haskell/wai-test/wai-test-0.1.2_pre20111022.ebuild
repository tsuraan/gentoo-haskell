# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

# The tests in various yesod packages depend on wai-test-0.1.2 which has not
# been released on hackage.  Patch wai-test-0.1.1 to include some changes from
# the github repo git://github.com/yesodweb/wai.git
MY_PV="0.1.1"
MY_P="wai-test-${MY_PV}"

DESCRIPTION="Unit test framework (built on HUnit) for WAI applications."
HOMEPAGE="http://www.yesodweb.com/book/wai"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${MY_PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-enumerator-0.2*
		<dev-haskell/case-insensitive-0.5
		<dev-haskell/cookie-0.4
		<dev-haskell/enumerator-0.5
		=dev-haskell/http-types-0.6*
		=dev-haskell/hunit-1.2*
		=dev-haskell/transformers-0.2*
		=dev-haskell/wai-0.4*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/wai-test-0.1.1-yesod-tests-require-unreleased-upstream-additions.patch")

src_prepare() {
	base_src_prepare
	sed -e 's@case-insensitive          >= 0.2      && < 0.4@case-insensitive          >= 0.2      \&\& < 0.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
