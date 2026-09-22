class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 9e406c7d782d5de352894b1e0bfedc3ebf239ca3
  version "0.3.1-dev.88"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.88-9e406c7-aarch64-apple-darwin.tar.gz"
      sha256 "ffc36f68e40f5793b3df7064ddb72d1a2def5287125b31067a55138a519c78a8"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.88-9e406c7-x86_64-apple-darwin.tar.gz"
      sha256 "a7595ae68f8070eac37be9b414e00a87f40aa196b37860f4631fac9546dd64c7"
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
