class Transcode < Formula
  desc ""
  homepage "https://github.com/alextall/Transcode"
  url "https://github.com/alextall/Transcode/archive/v1.5.tar.gz"
  sha256 "53bb8540057d9784fcb5f8820955eea9156a835906e9eaa578b6faa460f058b4"
  head "https://github.com/alextall/Transcode.git"

  def install
    bin.install "transcode.sh"
  end

  test do
    system "#{bin}/transcode.sh", "--version"
  end
end
