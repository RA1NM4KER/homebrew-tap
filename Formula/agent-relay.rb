class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: f46c026bb6341b7b5777a8990a41aa000fe29bfb
  version "0.3.1-dev.83"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.83-f46c026-aarch64-apple-darwin.tar.gz"
      sha256 "32d52490e78f83d358b1a2dfbf81744d01f5a61264849f840a6f658fc2ddd0f3"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.83-f46c026-x86_64-apple-darwin.tar.gz"
      sha256 "f90e2bbf1f850b6467cc1e2d90c4a27eff612b637b1252601766f5f0dac5650b"
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
