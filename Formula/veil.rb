# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "MCP retrieval toolkit for coding agents"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.7.3.tgz"
  sha256 "f20b0a3605889f4bfc1776c70d66492aec591b132f085dbc1482191cbbb4088b"
  version "0.7.3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_predicate bin/"veil", :exist?
  end
end
