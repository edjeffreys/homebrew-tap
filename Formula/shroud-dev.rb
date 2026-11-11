# Written by shroud's release workflow; changes here are overwritten at the next publish.
class ShroudDev < Formula
  desc "Terminal multiplexer for modern terminals (dev build of main)"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0-dev.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-apple-darwin.tar.gz"
      sha256 "844830818eb23be29a9ebd8cdb725c3e808efd9aba6fd1bd420ab70309a42c10"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-apple-darwin.tar.gz"
      sha256 "4691c940b4b7e70195c3efe82f7c47a73f4b5c394298949885dfc90addea9a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "be2f6ccbdd54c89e14d586394c4f7b830032da6e18865a33d64d8503fb862b0c"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e9b99aa4f82b976458c7d6a3141a5b5e88583b45646ac230634d9c0f4637ee7"
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
