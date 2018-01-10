class Table < Formula
  desc "Put things into tables"
  homepage "https://github.com/alyssais/table"
  url "https://github.com/alyssais/table/archive/v1.0.0.tar.gz"
  head "https://github.com/alyssais/table.git"

  def install
    libexec.install "exe", "lib"
    bin.install_symlink libexec/"exe/table"
  end

  test do
    assert_equal "foo  bar\n1    2  \n", pipe_output(bin/"table", "foo\tbar\n1\t2\n", 0)
  end
end
