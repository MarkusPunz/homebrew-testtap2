class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.4"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.4"
    sha256 cellar: :any_skip_relocation, ventura:      "292120bd7f4e8d6fecca3b4ed151632fca601f64a92cd69c201b6cc1f033d6f3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "820d241f4eb45163dbe72014cce25eba47c3a678d3a7bd4f4bcde95408aab731"
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
