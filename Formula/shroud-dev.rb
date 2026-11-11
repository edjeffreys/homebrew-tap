# Written by shroud's release workflow; changes here are overwritten at the next publish.
class ShroudDev < Formula
  desc "Terminal multiplexer for modern terminals (dev build of main)"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0-dev.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-apple-darwin.tar.gz"
      sha256 "fda3cc307fa4bd03068596e201d907716ba2d11c81a3a8b004dfcd3b3b7d55a1"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-apple-darwin.tar.gz"
      sha256 "2e7eb13dee1cb375e5f4a2e8499219bd4e906b742655585298b39d05abbc3e55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "804cfe7ba53848781a31b5d918e84b5e3c65acc347cf11f8a7e1c5ae8c2c931d"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2079140898f9a264aacb312dc1727bc85696508fca1464cccee0eda8aa0f31a7"
    end
  end

  conflicts_with "shroud", because: "both install a shroud binary"

  def install
    bin.install "shroud"
  end

  test do
    assert_match "shroud ", shell_output("#{bin}/shroud --version")
  end
end
