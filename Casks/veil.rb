# This file is managed by veil release automation. DO NOT EDIT.
cask "veil" do
  name "veil"
  desc "Fast CLI and skill for local code retrieval and agent context workflows"
  homepage "https://github.com/ushiradineth/veil"
  version "0.2.1"
  url "https://registry.npmjs.org/@ushiradineth/veil/-/veil-0.2.1.tgz"
  sha256 "c846b87a2178d560b346c1344b179f734ede2b737b5cbe460bfe10381951d006"

  depends_on formula: "node"

  binary "package/bin/veil.mjs", target: "veil"

  # No zap stanza required
end
