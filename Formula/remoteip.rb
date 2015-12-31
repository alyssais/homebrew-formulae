class Remoteip < Formula
  desc "Find a host's remote IP address"
  homepage "https://github.com/alyssais/remoteip"
  head "https://github.com/alyssais/remoteip.git"

  def install
    bin.install "remoteip"
  end

  test do
    system bin/"remoteip"
  end
end
