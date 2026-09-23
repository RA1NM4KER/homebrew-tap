class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: cdcd922c39b521c788e1cfce74e65539ce0b1710
  version "0.3.1-dev.113"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.113-cdcd922-aarch64-apple-darwin.tar.gz"
      sha256 "0bf6b0b6b756c27ea414f7f1bdc58521ceeaffdb23956cdd992a58404dd26f15"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.113-cdcd922-x86_64-apple-darwin.tar.gz"
      sha256 "6f9910d99ad1cb39e303b5b6e82663fead19f16c658b81dc0b6f0ba63d583d64"
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
