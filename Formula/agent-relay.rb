class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 15602620f100df3ce796f61b941bafab2b9b0806
  version "0.3.1-dev.77"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.77-1560262-aarch64-apple-darwin.tar.gz"
      sha256 "e5f1268d0369d11fc7cc2aec04f0da6f3c82a79756f729c1a4f1beedb9e7ddbb"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.77-1560262-x86_64-apple-darwin.tar.gz"
      sha256 "c9ab03ebf135f3a556f646c5b67b95173d9f2c4f7dfb30701ae185e559c54249"
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
