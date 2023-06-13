class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.6"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.6"
    sha256 cellar: :any_skip_relocation, ventura:      "8728ce4350975f32a97ff846279aefc7b4595e43dd4c825a2422a051643fd501"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "7712f4c0f16742af60b1302e76171fd756db6f77ff3dbf4f2ceb7edf75b9f27c"
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
