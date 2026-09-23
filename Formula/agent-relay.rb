class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 85db4e9fec6810abfb5572e5effff21a5d4b5aba
  version "0.3.1-dev.122"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.122-85db4e9-aarch64-apple-darwin.tar.gz"
      sha256 "3b78e388f0e02bcf535f2bc62c49ca3024308f35f188c405c1185dfff3d78969"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.122-85db4e9-x86_64-apple-darwin.tar.gz"
      sha256 "23fce2e82db6d2c46162730b194e711a4f1149d6f15160ce7bb53cfc8f67fb53"
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
