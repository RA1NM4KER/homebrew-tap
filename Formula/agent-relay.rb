class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: bbc9c2eb10e05170b4501c501834e65a7167230e
  version "0.3.1-dev.86"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.86-bbc9c2e-aarch64-apple-darwin.tar.gz"
      sha256 "4c9ca0fc35a9c0ba12642f641b79f917e3f87017f1293d02efcbd4b916cf7513"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.86-bbc9c2e-x86_64-apple-darwin.tar.gz"
      sha256 "d322c1a3b352d4d0f19a46a3d7eea04624ba59612c2f99b37ee15512c48ecac9"
    end
  end

  def install
    bin.install "relay"
    bin.install "relay-herdr-plugin"
  end

  test do
    system "#{bin}/relay", "--version"
  end
end
