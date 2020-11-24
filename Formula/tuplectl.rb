class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.3.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.37.0/tuplectl-darwin-amd64"
      sha256 "93b98f83d01d7c1759cd9befb92797bf066bf685f871fba0541aa263c7244240"
    end

    def install
      bin.install "tuplectl-darwin-amd64", "tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
