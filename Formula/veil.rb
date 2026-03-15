# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.3.0.tgz"
  sha256 "33edbf6467dbac4bdba008f4062d587ae24b2544f6cf34408ac7605b13a45b7a"
  version "0.3.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/veil 2>&1", 1)
  end
end
