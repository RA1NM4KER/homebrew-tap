class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 0d85c7ed8d3182f009aa2fa0fbfbc009d92b5167
  version "0.3.1-dev.118"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.118-0d85c7e-aarch64-apple-darwin.tar.gz"
      sha256 "93d85d9acebd3e42c5ca9d4563bca7531b28136fa71966ef9067dcc873690755"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.118-0d85c7e-x86_64-apple-darwin.tar.gz"
      sha256 "c08913d1a14be2824978981b983c98d9a5a0b5c1e3b9ace837635ac421683f9f"
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
