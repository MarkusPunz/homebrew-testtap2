class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.2"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

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
