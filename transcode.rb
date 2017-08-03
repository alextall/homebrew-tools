class Transcode < Formula
  desc ""
  homepage "https://github.com/alextall/Transcode"
  url "https://github.com/alextall/Transcode/archive/v1.4.tar.gz"
  sha256 "db3c80a735a9ab1571dd3f0f7cf28b4531202c34db9c1c539fb9b7e111bf572d"
  head "https://github.com/alextall/Transcode.git"

  def install
    bin.install "transcode.sh"
  end

  test do
    system "#{bin}/transcode.sh", "--version"
  end
end
