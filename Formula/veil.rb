# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "MCP retrieval toolkit for coding agents"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.7.0.tgz"
  sha256 "8455377c2b30daa75e0f57a9ffb9de4d1564acb3326075657e159412531a00b8"
  version "0.7.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_predicate bin/"veil", :exist?
  end
end
