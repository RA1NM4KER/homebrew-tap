class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 7f1d8a3d08db036f2adb341146a413003ccebbf1
  version "0.3.1-dev.117"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.117-7f1d8a3-aarch64-apple-darwin.tar.gz"
      sha256 "4ee0598f9f3e2aa6763f541dde04a6ca2d4bef3444eecf0d0d9c646c688c4d83"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.117-7f1d8a3-x86_64-apple-darwin.tar.gz"
      sha256 "55c4668957fc128e775008f421d6aa856b2cc2704006aaf526ae8195f70cbc7c"
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
