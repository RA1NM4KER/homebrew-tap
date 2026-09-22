class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 640f5dd612fee6771e68c846e2b375ed0640647b
  version "0.3.1-dev.92"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.92-640f5dd-aarch64-apple-darwin.tar.gz"
      sha256 "e553c73078de96171885a3995ea73e407a6025da58c148802557aa548ff2b46b"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.92-640f5dd-x86_64-apple-darwin.tar.gz"
      sha256 "c6abb2f93d8442ac168185571045bc02f8d7f4d01bfc01d64f9146aa4a3566d7"
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
