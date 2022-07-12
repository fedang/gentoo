# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Chunked HTTP transfer encoding for bytestring builders"
HOMEPAGE="https://github.com/sjakobi/bsb-http-chunked"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/attoparsec
		>=dev-haskell/blaze-builder-0.2.1.4
		>=dev-haskell/doctest-0.8
		dev-haskell/hedgehog
		dev-haskell/tasty
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.8 && < 4.13' 'base >= 4.8'
}
