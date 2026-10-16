class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.2/agent-relay-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "a8fe1813a154a47966532d40ddff87311b7e1f25c4b0bb559ddb39c583558310"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.2/agent-relay-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "de69ca93cade8addfeceef4bd722db0c98857038bc533a468b0d995ddecb20fc"
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
