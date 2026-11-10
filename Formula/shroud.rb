# Written by shroud's release workflow; changes here are overwritten at the next release.
class Shroud < Formula
  desc "Terminal multiplexer for modern terminals, built on libghostty-vt"
  homepage "https://github.com/edjeffreys/shroud"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/v0.1.0/shroud-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f25881e68ed3b664953cfb21688a5cd84e1c380aac70f4c72585392dd56dcc64"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/v0.1.0/shroud-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9695411c6889af8b7e887c2ff62f6db0b01cafdf14b435928bcee5b4d98f6a1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edjeffreys/shroud/releases/download/v0.1.0/shroud-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92c8c28673169307566953ec8b3bb72b693eb235ae06a8b9bde600bc4f6b8da4"
    end
    on_intel do
      url "https://github.com/edjeffreys/shroud/releases/download/v0.1.0/shroud-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6928d449ef721a7680d90893f4b3380c1a27f8051764aedf4f1dfdcb376b5b15"
    end
  end

  head do
    url "https://github.com/edjeffreys/shroud.git", branch: "main"
    depends_on "rust" => :build
    depends_on "zig" => :build
  end

  def install
    if build.head?
      # Homebrew's sandbox allows writes only inside the build directory.
      ENV["ZIG_GLOBAL_CACHE_DIR"] = buildpath/".zig-cache"
      system "cargo", "install", *std_cargo_args(path: "crates/shroud")
    else
      bin.install "shroud"
    end
  end

  test do
    assert_match "shroud ", shell_output("#{bin}/shroud --version")
  end
end
