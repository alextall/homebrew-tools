class Plexify < Formula
    desc "Transcode video files to lower bitrates based on resolution"
    homepage "https://github.com/alextall/Plexify"
    url "https://github.com/alextall/Plexify/archive/v0.1.tar.gz"
    sha256 "8d17f0867b8c9cf7d1ed706b44a21745aab2d7bef7f3b8db2a9df1d9892b6717"
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
