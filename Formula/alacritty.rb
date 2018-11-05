class Alacritty < Formula
  desc "Cross-platform, GPU-accelerated terminal emulator"
  homepage "https://github.com/jwilm/alacritty"
  url "https://github.com/jwilm/alacritty/archive/v0.2.1.tar.gz"
  sha256 "BADCHECKSUM"
  depends_on "rust" => :build

  def install
    system "make", "app"
    bin.install "target/release/osx/Alacritty.app/Contents/MacOS/alacritty"
  end

  test do
    system "#{bin}/alacritty", "-V"
  end
end
