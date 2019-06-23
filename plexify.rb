class Plexify < Formula
    desc "Transcode video files to lower bitrates based on resolution"
    homepage "https://alextall.github.io/plexify/"
    url "https://github.com/alextall/Plexify/archive/v0.3.tar.gz"
    sha256 "5c31d4b4f16040872385ed00e61aa8f57b189d6cee7606fcadd60f34b8d5508b"
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
