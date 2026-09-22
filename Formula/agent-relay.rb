class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: b33af163bc1ae48082b972a0a65540d364c24114
  version "0.3.1-dev.89"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.89-b33af16-aarch64-apple-darwin.tar.gz"
      sha256 "11fbf3743dff97a17cb6107a34acb12f4155da7135a758e1365f404b20f44c56"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.89-b33af16-x86_64-apple-darwin.tar.gz"
      sha256 "c7b3fba1fc30670f0a55e3bfee01f1d51d500970bce5f7542bc296612e4f74df"
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
