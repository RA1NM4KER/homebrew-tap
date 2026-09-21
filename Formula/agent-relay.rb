class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: a25223833ea1bb41929c0d1774d657900f39a212
  version "0.3.1-dev.81"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.81-a252238-aarch64-apple-darwin.tar.gz"
      sha256 "d50c086aa855c9557a75af3c8bb8836a746807dfec81d6ba2675221ae898f016"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.81-a252238-x86_64-apple-darwin.tar.gz"
      sha256 "90d5c7b2efb81b4eb9da1d4de1ddcf548bc03ece027f6bb8f6e46a2f6e1b2eda"
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
