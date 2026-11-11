# Written by shroud's release workflow; changes here are overwritten at the next publish.
class ShroudDev < Formula
  desc "Terminal multiplexer for modern terminals (dev build of main)"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0-dev.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-apple-darwin.tar.gz"
      sha256 "bc39ec36cd24b868a75fdde33a7712cb8c6cb79d269bee5d3cad6f5a9c931419"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-apple-darwin.tar.gz"
      sha256 "fba9dea743cdcd510200002dc6d4ee5b8afc8b453a03ece5c904181d30a063d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "127ea5da0d4f14fd86a42508234011c3544a80e3bd1127ff5a265fc23b12e1cd"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/dev/shroud-dev-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07680bcaeec74817b55dfb9e6c499652e4686811a12090bda02fa22a3d6dfd81"
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
