class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 6e4b5c1e09be3fc9034875140be3c91292c0ec44
  version "0.3.1-dev.120"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.120-6e4b5c1-aarch64-apple-darwin.tar.gz"
      sha256 "8a71d3b1fa1065c4a218d4d692e683d5d5623cefabeb2c883e371d13739cb7bd"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.120-6e4b5c1-x86_64-apple-darwin.tar.gz"
      sha256 "1393b6002435e7465fc90043c920463dc6b34e35ecf6d8abbdd53ff784054675"
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
