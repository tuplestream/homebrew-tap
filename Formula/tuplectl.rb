class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.3.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.37.0/tuplectl-darwin-amd64"
      sha256 "979bf80d17f65823da24b2d42699ae3753c287fea5e78c71a0619db9563c7456"
    end

    def install
      bin.install "tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
