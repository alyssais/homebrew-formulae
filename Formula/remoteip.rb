class Remoteip < Formula
  desc "Find a host's remote IP address"
  homepage "https://github.com/alyssais/remoteip"
  url "https://github.com/alyssais/remoteip/archive/1.0.0.tar.gz"
  sha256 "6948a4a6b787aba26f9e867944bc0be2ac3d726841371e2cb35c727f52e81ab9"

  def install
    bin.install "remoteip"
  end

  test do
    system bin/"remoteip"
  end
end
