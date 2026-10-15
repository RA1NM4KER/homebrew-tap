class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.0/agent-relay-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d00f42941c7ce89663deb0eefb63bd03bbbbaaf012ee7a2b8740210d62ac884a"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.5.0/agent-relay-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8cb9193e807b9e602901d1c32471c14c5946d05365d3be04b9f99d27fa8e4ab"
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
