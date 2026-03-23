# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "MCP retrieval toolkit for coding agents"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.6.1.tgz"
  sha256 "de678b75f3aad1d09b48ce5ff6ab00a72fcef05e21439a9e6fc80f043f681fca"
  version "0.6.1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_predicate bin/"veil", :exist?
  end
end
