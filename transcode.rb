class Transcode < Formula
  desc ""
  homepage "https://github.com/alextall/Transcode"
  url "https://github.com/alextall/Transcode/archive/v1.6.1.tar.gz"
  sha256 "fd8cd7d94eaf259289507e8823949457c4d3a5767e3ee01a8119ef072994b892"
  head "https://github.com/alextall/Transcode.git"

  def install
    bin.install "transcode.sh"
  end

  test do
    system "#{bin}/transcode.sh", "--version"
  end
end
