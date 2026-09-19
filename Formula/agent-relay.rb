class AgentRelay < Formula
  desc "Keep a Claude Code session moving when one account hits its usage limit"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.2.0/agent-relay-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "bac715f2f977fd8bf01bfe548ece6595f79259ecaa15dc28b2b734f47da83ef4"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/v0.2.0/agent-relay-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "fa8b2c5bb48b164dd492b643eabe26fe77526395aaafb1590471a2153d90597f"
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
