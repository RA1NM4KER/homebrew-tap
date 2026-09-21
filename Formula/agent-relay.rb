class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.3.0/agent-relay-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "45221fa6b4a339701048d778336abacf893ff25620b244e30b443eb095e2a01f"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.3.0/agent-relay-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "c7a921ab16bc4f668072891da7c45c710109f8fdcc2bf7ddb361a3c7b8827e08"
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
