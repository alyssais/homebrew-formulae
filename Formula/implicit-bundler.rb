class ImplicitBundler < Formula
  desc "Automatically install the correct version of Bundler when you need it"
  homepage "https://github.com/alyssais/implicit-bundler"
  url "https://github.com/alyssais/implicit-bundler/archive/0.0.1.tar.gz"
  sha256 "02e305e1432e4ef08eb69131e84f7e40e8ba225d31cf215715c6e05c6892b8ef"

  def install
    bin.install "implicit-bundle"
  end

  def caveats; <<-EOS.undent
    You must manage Ruby using rbenv for Implicit Bundler to work.
      https://github.com/sstephenson/rbenv

    To point the `bundle` command to Implicit Bundler, add to your profile:
      alias bundle=implicit-bundle
    EOS
  end

  test do
    # hate to leave this blank, but testing this is really complicated :(
  end
end
