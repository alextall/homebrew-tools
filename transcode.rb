class Transcode < Formula
  desc ""
  homepage "https://github.com/alextall/Transcode"
  url "https://github.com/alextall/Transcode/archive/v1.3.tar.gz"
  sha256 "58bdfd0ca1bb08334eb1e80ac873fe01f3352364bfa825d26bad828253c7b53b"

  def install
    bin.install "transcode.sh"
  end

  test do
    system "#{bin}/transcode.sh", "--version"
  end
end
