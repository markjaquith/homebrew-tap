class Cowtree < Formula
  desc "Create and compact Git worktrees with copy-on-write filesystem clones"
  homepage "https://github.com/markjaquith/cowtree"
  url "https://github.com/markjaquith/cowtree/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "cba1a45cb4eeb46761d9864b60164286dae451e41fd70ea7188b659281c4c2e0"
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
