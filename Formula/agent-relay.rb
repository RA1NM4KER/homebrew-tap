class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.4.1/agent-relay-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "2335f1e7270890b44440d4e890f2f199149b96bad4feb15ab93f3751ee86faa1"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.4.1/agent-relay-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "8a0c3bfabc696fab310703422208d5bd6e530461e331e1649b31463e00b956b0"
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
