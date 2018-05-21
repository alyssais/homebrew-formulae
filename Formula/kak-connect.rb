class KakConnect < Formula
  desc "Kakoune extension to connect to client / session"
  homepage "https://github.com/alexherbo2/connect.kak"
  head "https://github.com/alexherbo2/connect.kak", :using => :git

  bottle :unneeded

  def install
    bin.install "bin/kak-connect"
  end
end
