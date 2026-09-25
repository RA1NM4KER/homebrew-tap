class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.4.0/agent-relay-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "2473a917253be4f38e556545a503383c8670e6db7e78ac1ddef9c9f0c97fac4b"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.4.0/agent-relay-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "92f1268ca7c7a484d25bb7352cfd7cca00161e6801ac05ed0fd776d754b78515"
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
