class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.6"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.5"
    sha256 cellar: :any_skip_relocation, ventura:      "29e3e15ea7c20c79bc61abc724fcebad91e8cbb4fdda68067c2c537102f0b98e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b99cc5a90d67662e06f7944fe1c4fa1156ddc8b144a1bd2ecdc086859028c709"
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
