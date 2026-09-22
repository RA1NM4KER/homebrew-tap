class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: a779ff06d821ee8399367aabe779452e59a3e0d3
  version "0.3.1-dev.102"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.102-a779ff0-aarch64-apple-darwin.tar.gz"
      sha256 "a1d96587769ff59ba51631400ba60e3771e519d17164efad43aa1dab09a3cd4c"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.102-a779ff0-x86_64-apple-darwin.tar.gz"
      sha256 "70f56c83d80fcf58468e01b83bde66d9720acb533b1e460e2ae52a0920e405ed"
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
