class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.44.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.44.0/tuplectl-darwin-amd64"
      sha256 "4695f2955e05ebcabf229d486b60090c0c4bd6c6b598e1ebbf27f3e08dd19665"
    end

    def install
      bin.install "tuplectl-darwin-amd64"
      system "mv", "#{bin}/tuplectl-darwin-amd64", "#{bin}/tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
