class Cowtree < Formula
  desc "Create and compact Git worktrees with copy-on-write filesystem clones"
  homepage "https://github.com/markjaquith/cowtree"
  url "https://github.com/markjaquith/cowtree/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0155ea940df4f2f80f08eecd4f60264b2600e7f9063fba8a6993af0e13b3fa38"
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
