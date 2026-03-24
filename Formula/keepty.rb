class Keepty < Formula
  desc "Persistent terminal sessions with native rendering and agent screen reading"
  homepage "https://github.com/BorjaGM1/keepty"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.0/keepty-aarch64-apple-darwin.tar.gz"
      sha256 "c36f0203eecb4a8aca31c31c2a499f510ab266174cc978bb8810412ac33640b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.0/keepty-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ccedb8e756b06b724ccf909a0c5309f8193e7207f225d968800fc044e126fbd1"
    end
    on_intel do
      url "https://github.com/BorjaGM1/keepty/releases/download/v0.1.0/keepty-x86_64-unknown-linux-musl.tar.gz"
      sha256 "911067e421252cea66a7cec0c43fbb874053b409f09647125d534d0e88b0c68b"
    end
  end

  def install
    bin.install "keepty"
  end

  test do
    assert_match "keepty", shell_output("#{bin}/keepty --help 2>&1", 1)
  end
end
