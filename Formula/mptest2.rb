class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.2"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.2"
    sha256 cellar: :any_skip_relocation, ventura:      "be52ab8a6d1881eec198806aba4c33328701de3c7120ac5ea0e64624b767b0e7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "fe55c3e04ba0f5ecd44017a37462519e798e1d8a28699460c77516dc29e6a868"
  end

  on_macos do
    def install
      prefix.install Dir["*"]
      lib.install_symlink prefix/"acosid-pkcs11.dylib"
    end
  end

  on_linux do
    def install
      prefix.install Dir["*"]
    end
  end

  test do
    system "true"
  end
end
