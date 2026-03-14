# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.2.3.tgz"
  sha256 "3d440d29d1735b690fceee44be2e8c01a6ffc16925c4c8429256defafb0d3bcf"
  version "0.2.3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "package"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/veil 2>&1", 1)
  end
end
