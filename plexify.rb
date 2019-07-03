class Plexify < Formula
    desc "Transcode video files to lower bitrates based on resolution"
    homepage "https://alextall.github.io/plexify/"
    url "https://github.com/alextall/Plexify/archive/v0.3.1.tar.gz"
    sha256 "9443f9111f28a6f913530369c4440cb8b4fd955b2ca013f8171ca109c4a0b02a"
    head "https://github.com/alextall/Plexify.git"

    depends_on "handbrake"
    depends_on "ffmpeg"
  
    def install
      bin.install "plexify.sh"
      mv "#{bin}/plexify.sh", "#{bin}/plexify"
    end
  
    test do
      system "#{bin}/plexify", "--version"
    end
  end
