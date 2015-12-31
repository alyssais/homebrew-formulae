class Define < Formula
  desc "Look up a word in the system dictionary from the command line"
  homepage "https://github.com/alyssais/define"
  head "https://github.com/alyssais/define.git"

  def install
    bin.install "define"
  end

  test do
    system bin/"define", "a"
  end
end
