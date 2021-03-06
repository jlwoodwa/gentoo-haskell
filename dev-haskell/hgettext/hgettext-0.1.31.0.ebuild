# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to libintl.h (gettext, bindtextdomain)"
HOMEPAGE="http://hackage.haskell.org/package/hgettext"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cabal:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.21:=[profile?]
	>=dev-haskell/setlocale-0.0.3:=[profile?] <dev-haskell/setlocale-1.1:=[profile?]
	>=dev-haskell/uniplate-1.6.12:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	>=dev-haskell/cabal-1.14:=[profile?] <dev-haskell/cabal-2.3:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.14
"

src_prepare() {
	default

	cabal_chdeps \
		'base             >=4.5    && <4.11' 'base             >=4.5' \
		'Cabal            >=1.14   && <1.25 || == 2.0.*' 'Cabal            >=1.14   && <1.25 || >= 2.0'
}
