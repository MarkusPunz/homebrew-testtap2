class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.3"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.3"
    sha256 cellar: :any_skip_relocation, ventura:      "7f17ad1752ab89c43cbe98e453647c663f71e9cb17d37d63c1402524694d1599"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "efe9098c8b3124c64d6b78b751b520905d9ff15338869d7443d1e2dc6456ed2e"
  end

  on_macos do
    def install
      prefix.install Dir["*"]
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
