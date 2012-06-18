# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Snap: A Haskell Web Framework: dynamic loader"
HOMEPAGE="http://snapframework.com/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/directory-tree-0.10*[profile?]
		>=dev-haskell/hint-0.3.3.1[profile?]
		<dev-haskell/hint-0.4[profile?]
		>dev-haskell/mtl-2.0[profile?]
		<dev-haskell/mtl-2.2[profile?]
		=dev-haskell/snap-core-0.9*[profile?]
		>=dev-haskell/time-1.1[profile?]
		<dev-haskell/time-1.5[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"
