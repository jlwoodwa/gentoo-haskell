# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="Confirm delegation of NS and MX records."
HOMEPAGE="http://michael.orlitzky.com/code/haeredes.php"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	>=dev-haskell/cmdargs-0.10 <dev-haskell/cmdargs-0.11
	>=dev-haskell/dns-1 <dev-haskell/dns-2
	>=dev-haskell/hunit-1.2 <dev-haskell/hunit-1.3
	>=dev-haskell/iproute-1.2 <dev-haskell/iproute-1.3
	>=dev-haskell/missingh-1.2 <dev-haskell/missingh-1.3
	>=dev-haskell/parallel-io-0.3 <dev-haskell/parallel-io-0.4
	>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
	>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
	>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-0.4
	>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4
	>=dev-lang/ghc-7.6.1
	test? ( >=dev-haskell/doctest-0.9 <dev-haskell/doctest-0.10
		>=dev-haskell/filemanip-0.3.6 <dev-haskell/filemanip-0.3.7 )
"

# Run only the non-network tests.
src_test() {
	haskell-cabal_src_test testsuite
}

src_install() {
	haskell-cabal_src_install
	doman "${S}/doc/man1/${PN}.1"
}
