class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 3a38e1f708d4d0cba3203d57570c98cd5ee9f8d5
  version "0.3.1-dev.80"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.80-3a38e1f-aarch64-apple-darwin.tar.gz"
      sha256 "ed7af17b6d00c93fbf9f0a94ef44232fca21b3628ce610c3cc103eab2e456fac"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.80-3a38e1f-x86_64-apple-darwin.tar.gz"
      sha256 "fe1e22ba272e71b88611a9e50b85f7137568e735ecbaaf944d7a2a4276d96563"
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
