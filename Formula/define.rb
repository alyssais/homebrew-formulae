class Define < Formula
  desc "Look up a word in the system dictionary from the command line"
  homepage "https://github.com/alyssais/define"
  url "https://github.com/alyssais/define/archive/0.0.1.tar.gz"
  sha256 "c171c2a436e045b84a2a8f2899391fa275d07a20d5e41a8ae2400c0124f53a7d"

  def install
    bin.install "define"
  end

  test do
    system bin/"define", "a"
  end
end
