class Cowtree < Formula
  desc "Create and compact Git worktrees with copy-on-write filesystem clones"
  homepage "https://github.com/markjaquith/cowtree"
  url "https://github.com/markjaquith/cowtree/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d0a669a70f277ef198b70c70feaaeaadad34fbc5c5b899c62e17ed6326dceac3"
  license "MIT"
  head "https://github.com/markjaquith/cowtree.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "Create and compact Git worktrees", shell_output("#{bin}/cowtree --help")
  end
end
