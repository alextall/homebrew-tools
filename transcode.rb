class Transcode < Formula
  desc ""
  homepage "https://github.com/alextall/Transcode"
  url "https://github.com/alextall/Transcode/archive/v1.6.tar.gz"
  sha256 "76ec8cd3e21654237903058db0b1a6666e94f1faf5dbade4679827c3327587b1"
  head "https://github.com/alextall/Transcode.git"

  def install
    bin.install "transcode.sh"
  end

  test do
    system "#{bin}/transcode.sh", "--version"
  end
end
