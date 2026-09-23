class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 4d47ddf82e0ff28fbf4130b38aca19f0f2abb683
  version "0.3.1-dev.121"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.121-4d47ddf-aarch64-apple-darwin.tar.gz"
      sha256 "fc9ac7561a0df88cb709eea6af4defabaf9420cf55c426b9e5a91b71ce8d72f5"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.121-4d47ddf-x86_64-apple-darwin.tar.gz"
      sha256 "91567fabb4be4d6e6d632144a89255f72d73aa395917e1f01547a4cd49096492"
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
