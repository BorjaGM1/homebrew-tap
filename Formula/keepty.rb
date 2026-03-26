class Keepty < Formula
  desc "Persistent terminal sessions with native rendering and agent screen reading"
  homepage "https://github.com/BorjaGM1/keepty"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.1/keepty-aarch64-apple-darwin.tar.gz"
      sha256 "290a37072103393d8b47160e8ab94cc0487103b50fe27c4f5d383c0cdcd37721"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.1/keepty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2f2b20e8b7405f2b4321522196457756628999e07fa7dc5bc32df1a6f0d03ee"
    end
    on_intel do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.1/keepty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67316c322c2f3b8fcc39e6324389f0196b032b668382197a205b0cc640a533c2"
    end
  end

  def install
    bin.install "keepty"
  end

  test do
    assert_match "keepty", shell_output("#{bin}/keepty --help 2>&1", 1)
  end
end
