class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 4f22f708fa41840a09d0aac4ff6eaca4679ef882
  version "0.3.1-dev.93"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.93-4f22f70-aarch64-apple-darwin.tar.gz"
      sha256 "2c2576fd11d447efa9ed67fc761895efd136db2fd7f45a54a4d96a2a1dd8af74"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.93-4f22f70-x86_64-apple-darwin.tar.gz"
      sha256 "fcbfb6371b43a1d0b54d60daa36a88e43e8a6c6034071711981c92852b66dcc3"
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
