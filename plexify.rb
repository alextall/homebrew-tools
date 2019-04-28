class Plexify < Formula
    desc "Transcode video files to lower bitrates based on resolution"
    homepage "https://github.com/alextall/Plexify"
    url "https://github.com/alextall/Plexify/archive/v0.2.tar.gz"
    sha256 "7d90c2a05e65a649b38dda68499397d7c9e096395d5ba05d7dc3d91b0bd517da"
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
