class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.40.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.40.0/tuplectl-darwin-amd64"
      sha256 "62f40a7cf15b74384a94b7fafa687e8b84f3a13e1ecd144b03d6d550f37b8b5c"
    end

    def install
      bin.install "tuplectl-darwin-amd64"
      system "mv", "#{bin}/tuplectl-darwin-amd64", "#{bin}/tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
