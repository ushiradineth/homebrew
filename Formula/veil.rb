# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.4.1.tgz"
  sha256 "b73c5f59ae7f602e20caa95fd694c7df73e80364b60c347d53a808c5e60584b3"
  version "0.4.1"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/veil 2>&1", 1)
  end
end
