# Written by shroud's release workflow; changes here are overwritten at the next publish.
class ShroudDev < Formula
  desc "Terminal multiplexer for modern terminals (dev build of main)"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0-dev.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-apple-darwin.tar.gz"
      sha256 "cccbfad0e2f2e83e686d334146316222e160b20e02f2fd32a26909f55a6ca3fe"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-apple-darwin.tar.gz"
      sha256 "67356d96ad1efe7d99b28e86171433e05691fcf6fb644cef98139c503204c4a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "23baff2d0d10cf40f31ba46e48e6244bb6667cd468334e9dde26a487bf6297f7"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcc63f9939a124cf52eb46a78c3195501c43f872065e5bc3b75c1c20ee37384b"
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
