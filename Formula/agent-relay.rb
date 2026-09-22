class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 3eff9e57a458898e9846d370fdeac1fb696cc7ee
  version "0.3.1-dev.100"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.100-3eff9e5-aarch64-apple-darwin.tar.gz"
      sha256 "a109cbd158f7c824393c5f37cc7e14c714bcb00ac19f3ab97b364597a6778e04"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.100-3eff9e5-x86_64-apple-darwin.tar.gz"
      sha256 "6b3646acf5960e85bdf5bb49ad127f1bf4b0cc9922b9c27571ac5870049783c7"
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
