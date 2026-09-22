class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 9b53cb8e99925b7b25f8bc21da798a7f05ca1342
  version "0.3.1-dev.111"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.111-9b53cb8-aarch64-apple-darwin.tar.gz"
      sha256 "ebb8a9226a20e40bbe25354c2d32839d8bb4887c01fa1d840d0c0e0446bcd0b9"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.111-9b53cb8-x86_64-apple-darwin.tar.gz"
      sha256 "d32dc5ab3cfb7e6c829370ef970103b72f61e9288bc653331c715a146db3a7af"
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
