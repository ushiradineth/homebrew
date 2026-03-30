# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "MCP retrieval toolkit for coding agents"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.7.2.tgz"
  sha256 "fd911a69f8ab31d7e24fea57da5b1c7c6d85d3f79431c0379dce7721f1782015"
  version "0.7.2"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_predicate bin/"veil", :exist?
  end
end
