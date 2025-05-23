class Todo < Formula
  desc "A simple CLI todo application written in Go"
  homepage "https://github.com/AmanTahiliani/todo"
  version "v0.3.1-alpha"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"todo", "./cmd/todo"
  end

  test do
    system "#{bin}/todo", "--help"
  end
end