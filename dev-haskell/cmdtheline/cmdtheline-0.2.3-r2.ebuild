# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit eutils haskell-cabal

DESCRIPTION="Declarative command-line option parsing and documentation library"
HOMEPAGE="https://github.com/eli-frey/cmdtheline"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2.4 <dev-haskell/hunit-2
		>=dev-haskell/parsec-3.1 <dev-haskell/parsec-3.2
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2 <dev-haskell/test-framework-hunit-0.4
		>=dev-haskell/transformers-0.2 )
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc-7.10.patch
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'transformers >= 0.2 && < 0.4' 'transformers >= 0.2' \
		'-Werror' ' ' \
		'filepath >= 1.3 && < 1.4' 'filepath >= 1.3'
}
