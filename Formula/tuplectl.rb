class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.38.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.38.0/tuplectl-darwin-amd64"
      sha256 "1c02ebb7a86adf862b09df5a92de6eb58e5a78268f46de1e09883d4841f54447"
    end

    def install
      bin.install "tuplectl-darwin-amd64"
      system "mv", "#{bin}/tuplectl-darwin-amd64", "#{bin}/tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
