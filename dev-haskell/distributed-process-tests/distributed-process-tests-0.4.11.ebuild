# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Tests and test support tools for distributed-process"
HOMEPAGE="https://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="tcp"

RESTRICT=test # TestCHInMemory occasionally locks up

RDEPEND=">=dev-haskell/ansi-terminal-0.5:=[profile?]
	>=dev-haskell/distributed-process-0.6.0:=[profile?] <dev-haskell/distributed-process-0.8:=[profile?]
	dev-haskell/distributed-static:=[profile?]
	>=dev-haskell/hunit-1.2:=[profile?] <dev-haskell/hunit-1.7:=[profile?]
	>=dev-haskell/network-2.5:=[profile?] <dev-haskell/network-2.7:=[profile?]
	>=dev-haskell/network-transport-0.4.1.0:=[profile?] <dev-haskell/network-transport-0.6:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/rematch-0.1.2.1:=[profile?]
	>=dev-haskell/setenv-0.1.1.3:=[profile?]
	dev-haskell/stm:=[profile?]
	>=dev-haskell/test-framework-0.6:=[profile?] <dev-haskell/test-framework-0.9:=[profile?]
	>=dev-haskell/test-framework-hunit-0.2.0:=[profile?] <dev-haskell/test-framework-hunit-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/network-transport-inmemory-0.5
		tcp? ( >=dev-haskell/network-transport-tcp-0.5 <dev-haskell/network-transport-tcp-0.7 ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag tcp tcp)
}
