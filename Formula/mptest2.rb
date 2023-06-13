class Mptest2 < Formula
  desc "Test Mptest"
  homepage "https://www.bdc.at"
  url "https://github.com/MarkusPunz/testapp1/raw/main/test.tar.gz"
  version "0.0.8"
  sha256 "666f6626b4b2077369fdd6c134ea3666a2a136b6e9dfa2d7dcb0b1ea9fafa5c7"

  bottle do
    root_url "https://github.com/MarkusPunz/homebrew-testtap2/releases/download/mptest2-0.0.8"
    sha256 cellar: :any_skip_relocation, ventura:      "c1977dbaa33a77a94317f1dbe5ca867403b36b7d80cd56c3cfccd1480179827b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "22d8caee858b82dba64b1f11b6ff86a189220b8ed8dce2494a0bac0e929578be"
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
