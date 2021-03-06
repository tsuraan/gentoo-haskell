# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="A fast, iteratee-based, epoll-enabled web server for the Snap Framework"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="libev"

RDEPEND="=dev-haskell/attoparsec-0.10*
		<dev-haskell/attoparsec-enumerator-0.4
		=dev-haskell/binary-0.5*
		<dev-haskell/blaze-builder-0.4
		=dev-haskell/blaze-builder-enumerator-0.2*
		dev-haskell/bytestring-nums
		=dev-haskell/case-insensitive-0.4*
		=dev-haskell/directory-tree-0.10*
		=dev-haskell/enumerator-0.4*
		=dev-haskell/monadcatchio-transformers-0.2*
		=dev-haskell/mtl-2.0*
		=dev-haskell/murmur-hash-0.1*
		=dev-haskell/network-2.3*
		=dev-haskell/psqueue-1.1*
		=dev-haskell/snap-core-0.6*
		=dev-haskell/text-0.11*
		<dev-haskell/time-1.4
		=dev-haskell/transformers-0.2*
		<dev-haskell/unix-compat-0.4
		>=dev-haskell/vector-0.7
		=dev-haskell/vector-algorithms-0.5*
		>=dev-lang/ghc-7.0.1
		libev? ( >=dev-haskell/hlibev-0.2.8 )"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}//snap-server-0.6.0.1-attoparsec-0.10.patch")

src_prepare() {
	base_src_prepare
	sed -e 's@hlibev >= 0.2.8 && < 0.3@hlibev >= 0.2.8 \&\& < 0.5@' \
		-e 's@attoparsec                >= 0.8.1    && < 0.10@attoparsec                >= 0.8.1    \&\& < 0.11@' \
		-e 's@attoparsec-enumerator     >= 0.2.0.1  && < 0.3@attoparsec-enumerator     >= 0.2.0.1  \&\& < 0.4@' \
		-e 's@case-insensitive          >= 0.3      && < 0.4@case-insensitive          >= 0.3      \&\& < 0.5@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}

src_configure() {
	cabal_src_configure $(cabal_flag libev)
}
