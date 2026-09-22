class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 19ccee77e3ac26103b032636648bdef8ff5017ce
  version "0.3.1-dev.87"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.87-19ccee7-aarch64-apple-darwin.tar.gz"
      sha256 "2d1ca5fdd7eca95138bdd2360a77fab3ee678a41af902fc91cb492fcd11a58c8"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.87-19ccee7-x86_64-apple-darwin.tar.gz"
      sha256 "c3723fa8d054431341fbb5ea64a1e69e1cecdf254d7d158d9f2c772c41b319c9"
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
