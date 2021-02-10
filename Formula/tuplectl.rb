class Tuplectl < Formula
    desc "Tuplectl CLI Tool"
    homepage "https://docs.tuplestream.com/"
    version "0.43.0"
    bottle :unneeded

    if OS.mac?
      url "https://github.com/tuplestream/tuplectl/releases/download/v0.43.0/tuplectl-darwin-amd64"
      sha256 "309fcfeedebecdd818fa0b5ef94fffb50d6a76313e6337f9903342f2959c6cbf"
    end

    def install
      bin.install "tuplectl-darwin-amd64"
      system "mv", "#{bin}/tuplectl-darwin-amd64", "#{bin}/tuplectl"
    end

    test do
      system "#{bin}/tuplectl --version"
    end
  end
