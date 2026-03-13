# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.2.1.tgz"
  sha256 "c846b87a2178d560b346c1344b179f734ede2b737b5cbe460bfe10381951d006"
  version "0.2.1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "."
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/veil 2>&1", 1)
  end
end
