class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit b2320f5)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.160"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.160-b2320f5-aarch64-apple-darwin.tar.gz"
      sha256 "5b7d8fe1a7f00164c92657fbdbdd2ac0b357aa5cca6d9467b89391e3c592233d"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.160-b2320f5-x86_64-apple-darwin.tar.gz"
      sha256 "e7cb7c0319d581abaf5d35a6b8f834aaa9104c3e65cba462b1e33a1c93181490"
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
