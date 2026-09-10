class Cowtree < Formula
  desc "Create and compact Git worktrees with copy-on-write filesystem clones"
  homepage "https://github.com/markjaquith/cowtree"
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
