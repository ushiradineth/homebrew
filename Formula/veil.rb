# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "MCP retrieval toolkit for coding agents"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.6.0.tgz"
  sha256 "7fcae63823892b6d94ba99eb812ce402b93adcce36c961fe45af6f1b70236115"
  version "0.6.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_predicate bin/"veil", :exist?
  end
end
