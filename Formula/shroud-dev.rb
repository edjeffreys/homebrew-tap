# Written by shroud's release workflow; changes here are overwritten at the next publish.
class ShroudDev < Formula
  desc "Terminal multiplexer for modern terminals (dev build of main)"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0-dev.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-apple-darwin.tar.gz"
      sha256 "3f772d001290dbefd1a73e343af12b02980b9972af84e143e6c1fcbfc7ae6c98"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-apple-darwin.tar.gz"
      sha256 "8ef9d338338d463a093eaf18a087c2956b31593f3abf2ba61c0df4f553e7e98a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd18aa1f6bcc9b9862b1c13d9cfba099edf4b77ba87d3eeeac0d8f6f8fd4cca2"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f048fc9e7da6d052327f4a3e32c45b76eb1cbf3c007fe9450ce43e4db3d45a2a"
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
