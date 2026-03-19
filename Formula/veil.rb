# This file is managed by veil release automation. DO NOT EDIT.
class Veil < Formula
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.4.0.tgz"
  sha256 "923e3a7a09d0592fae0c409b4273a8a56d884fa01bc2342442d7c9996115478e"
  version "0.4.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix", prefix, "./package"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/veil 2>&1", 1)
  end
end
