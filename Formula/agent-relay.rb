class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 278f68d2cd200ee155e743afe23bbba5c06d0bcf
  version "0.3.1-dev.99"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.99-278f68d-aarch64-apple-darwin.tar.gz"
      sha256 "5c15f0f4f3c355fc389a513692b03a460fba34f8e4d323fbf4c23cba3818289f"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.99-278f68d-x86_64-apple-darwin.tar.gz"
      sha256 "5def1241eeb9cdf5691b52da6d75623b14097fb15867aeee5a0537d4fd5dbfb5"
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
