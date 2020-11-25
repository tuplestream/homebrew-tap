class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.42.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.42.0/tuplectl-darwin-amd64"
      sha256 "36ba83ef3abd7931a435f83970f025688e0369f19d4fe684e3a38642aab7cb1e"
    end

    def install
      bin.install "tuplectl-darwin-amd64"
      system "mv", "#{bin}/tuplectl-darwin-amd64", "#{bin}/tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
