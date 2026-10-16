class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.1/agent-relay-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e5df2fe24f47f07f84ee3c122ddf43652ace5e9825203d7a4130f4b699abbeb"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.1/agent-relay-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "ff04c927d4a03f2ca32632144af32dd2eded57010bccdec8504b212517e9d81b"
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
