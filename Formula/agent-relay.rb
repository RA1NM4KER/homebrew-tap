class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: d2e9883e5e85eda0acbce416667fe5b714c38ae8
  version "0.3.1-dev.91"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.91-d2e9883-aarch64-apple-darwin.tar.gz"
      sha256 "e981c445979a95d1a479f3fd56d74c444133513049a878c1a092f9010a19abdf"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.91-d2e9883-x86_64-apple-darwin.tar.gz"
      sha256 "f33ef606234da2ade1f54ff9a16d8e12734b104c51cd0005394a91170fb57fb6"
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
