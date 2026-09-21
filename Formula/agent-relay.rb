class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: ba272f50ff3e16288b73ef94200f7f7f78a25cc7
  version "0.3.1-dev.76"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.76-ba272f5-aarch64-apple-darwin.tar.gz"
      sha256 "5c1f72a666ee9ecba70fddc70e232af179fec383e5d0729e0d708bcefa98476d"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.76-ba272f5-x86_64-apple-darwin.tar.gz"
      sha256 "825e4b07e50207ed5e8a8741777cd3c367a9904fac590ad47bec6783a3ee0dfb"
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
