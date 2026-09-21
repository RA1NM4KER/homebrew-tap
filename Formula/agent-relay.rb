class AgentRelay < Formula
  desc "Keep Claude Code and Codex sessions moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the latest GREEN main build. Commit: 982f0d966c0a765a606f11795df126fcd06d117d
  version "0.3.1-dev.79"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.79-982f0d9-aarch64-apple-darwin.tar.gz"
      sha256 "bb46ade6cb85eb2844707e8596f638d755a01e15ac28ab65b530226f21865317"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.3.1-dev.79-982f0d9-x86_64-apple-darwin.tar.gz"
      sha256 "bb5b49d9e9d881df4cfd32c4a47b827ee7b6e4678fed248ef8715bd2622f8a46"
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
