class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 66642ebe99cc5b80b5c27d39e4830634756d986d
  version "0.3.1-dev.116"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.116-66642eb-aarch64-apple-darwin.tar.gz"
      sha256 "7586a71d0b70b97da6d9286c543ad994e7043b89dc797a2490f531c34352fd05"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.116-66642eb-x86_64-apple-darwin.tar.gz"
      sha256 "9fb3a38adb28d878bceba5037d021d44b4e7af0027707ce36c29a2ea83df7eae"
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
