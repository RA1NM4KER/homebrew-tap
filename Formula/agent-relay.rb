class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 520b942fc81a2c54a2539f2bcdd3592a12aab56a
  version "0.3.1-dev.101"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.101-520b942-aarch64-apple-darwin.tar.gz"
      sha256 "68920143ec0d17c2f6f34c15d39c19c8e2858ec328a3f45971b872c3d3a64445"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.101-520b942-x86_64-apple-darwin.tar.gz"
      sha256 "2891888a34f08fbdacc63fc5a3942dde8000af7c7b3e565480dabdcd81b0e640"
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
