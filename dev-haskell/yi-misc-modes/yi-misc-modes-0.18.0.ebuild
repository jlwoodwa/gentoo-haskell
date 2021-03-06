# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Yi editor miscellaneous modes"
HOMEPAGE="https://github.com/yi-editor/yi#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/data-default:=[profile?]
	dev-haskell/microlens-platform:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/yi-core-0.18:=[profile?]
	>=dev-haskell/yi-language-0.18:=[profile?]
	>=dev-haskell/yi-rope-0.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	dev-haskell/alex
	>=dev-haskell/cabal-1.22.2.0
"
