class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: ed148c101c63096f205ece8315c554ed115c552e
  version "0.3.1-dev.84"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.84-ed148c1-aarch64-apple-darwin.tar.gz"
      sha256 "ff939bb5f2fa9543576628bb442663eedd70825f07273d4c7b66bd6eca70e85e"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.84-ed148c1-x86_64-apple-darwin.tar.gz"
      sha256 "5e7264f3a04c2b555825fe863a493df98d3e7a0fdb7cd6d91a35c67d8bedde6e"
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
