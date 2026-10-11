class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit c0d8000)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.169"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.169-c0d8000-aarch64-apple-darwin.tar.gz"
      sha256 "0261c55e1c4ac54f3db84cdec8fcd997551641100cbce63ec48f2e0bae266223"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.169-c0d8000-x86_64-apple-darwin.tar.gz"
      sha256 "d60eb5949b734d44d32930f893e0b2b1b5a4c8f60ba6f11aab1a26056749a2cf"
    end
  end

  # Installed under distinct names so stable (agent-relay) and dev (agent-relay-dev) coexist:
  # both formulas can be installed and linked at the same time, on the same machine, with no
  # PATH ordering games. "relay" always means stable; "relay-dev" always means this dogfood build.
  def install
    bin.install "relay" => "relay-dev"
    bin.install "relay-herdr-plugin" => "relay-herdr-plugin-dev"
  end

  test do
    system "#{bin}/relay-dev", "--version"
  end
end
