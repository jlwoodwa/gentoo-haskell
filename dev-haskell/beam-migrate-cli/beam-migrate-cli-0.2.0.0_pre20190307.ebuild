# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES=""
inherit haskell-cabal git-r3

DESCRIPTION="CLI tool for beam-migrate"
HOMEPAGE="https://travis.athougies.net/projects/beam.html"
EGIT_REPO_URI="https://github.com/tathougies/beam"
EGIT_BRANCH="master"
EGIT_COMMIT="66abcad4a824b9ac7f8f5c99b4c9c850c5aa082c"
#SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="werror"

S="${WORKDIR}/${P}/${PN}"

RDEPEND=">=dev-haskell/aeson-0.11:= <dev-haskell/aeson-1.5:=
	>=dev-haskell/ansi-terminal-0.6:= <dev-haskell/ansi-terminal-0.9:=
	>=dev-haskell/beam-core-0.8:= <dev-haskell/beam-core-0.9:=
	>=dev-haskell/beam-migrate-0.4:= <dev-haskell/beam-migrate-0.5:=
	>=dev-haskell/cryptonite-0.23:= <dev-haskell/cryptonite-0.26:=
	>=dev-haskell/editor-open-0.6:= <dev-haskell/editor-open-0.7:=
	>=dev-haskell/exceptions-0.8:= <dev-haskell/exceptions-0.11:=
	>=dev-haskell/fgl-5.5:= <dev-haskell/fgl-5.8:=
	>=dev-haskell/hashable-1.2:= <dev-haskell/hashable-1.3:=
	>=dev-haskell/haskell-src-exts-1.18:= <dev-haskell/haskell-src-exts-1.21:=
	>=dev-haskell/hint-0.6:= <dev-haskell/hint-0.10:=
	>=dev-haskell/largeword-1.2:= <dev-haskell/largeword-1.3:=
	>=dev-haskell/monad-loops-0.4:= <dev-haskell/monad-loops-0.5:=
	>=dev-haskell/mtl-2.2:= <dev-haskell/mtl-2.3:=
	>=dev-haskell/network-2.6:= <dev-haskell/network-2.9:=
	>=dev-haskell/optparse-applicative-0.13:= <dev-haskell/optparse-applicative-0.15:=
	>=dev-haskell/random-1.1:= <dev-haskell/random-1.2:=
	>=dev-haskell/split-0.2:= <dev-haskell/split-0.3:=
	>=dev-haskell/text-1.2:= <dev-haskell/text-1.3:=
	>=dev-haskell/unordered-containers-0.2:= <dev-haskell/unordered-containers-0.3:=
	>=dev-haskell/uuid-1.3:= <dev-haskell/uuid-1.4:=
	>=dev-haskell/yaml-0.8:= <dev-haskell/yaml-0.12:=
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag werror werror)
}
