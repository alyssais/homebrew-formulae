class ImplicitBundler < Formula
  desc "Automatically install the correct version of Bundler when you need it"
  homepage "https://github.com/alyssais/implicit-bundler"
  head "https://github.com/alyssais/implicit-bundler.git"

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
