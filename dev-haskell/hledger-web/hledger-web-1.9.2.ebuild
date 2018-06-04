# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5
#hackport: flags: -blaze_html_0_4,-dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Web interface for the hledger accounting tool"
HOMEPAGE="http://hledger.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="library-only +threaded"

RDEPEND=">=dev-haskell/base-compat-0.8.1:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	dev-haskell/blaze-markup:=[profile?]
	dev-haskell/clientsession:=[profile?]
	>=dev-haskell/cmdargs-0.10:=[profile?]
	>=dev-haskell/conduit-extra-1.1:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/hjsmin:=[profile?]
	>=dev-haskell/hledger-1.9.1:=[profile?] <dev-haskell/hledger-2.0:=[profile?]
	>=dev-haskell/hledger-lib-1.9.1:=[profile?] <dev-haskell/hledger-lib-2.0:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/hunit:=[profile?]
	dev-haskell/json:=[profile?]
	>=dev-haskell/megaparsec-5.0:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	>=dev-haskell/safe-0.2:=[profile?]
	>=dev-haskell/shakespeare-2.0.2.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	dev-haskell/wai:=[profile?]
	dev-haskell/wai-extra:=[profile?]
	>=dev-haskell/wai-handler-launch-1.3:=[profile?]
	dev-haskell/warp:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-haskell/yesod-1.4:=[profile?] <dev-haskell/yesod-1.7:=[profile?]
	>=dev-haskell/yesod-core-1.4:=[profile?] <dev-haskell/yesod-core-1.7:=[profile?]
	>=dev-haskell/yesod-form-1.4:=[profile?] <dev-haskell/yesod-form-1.7:=[profile?]
	>=dev-haskell/yesod-static-1.4:=[profile?] <dev-haskell/yesod-static-1.7:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/hspec
		dev-haskell/yesod-test )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-blaze_html_0_4 \
		--flag=-dev \
		$(cabal_flag library-only library-only) \
		$(cabal_flag threaded threaded)
}