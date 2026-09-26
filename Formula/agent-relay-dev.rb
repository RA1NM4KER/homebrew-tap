class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit c3afe63)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.138"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.138-c3afe63-aarch64-apple-darwin.tar.gz"
      sha256 "6e4c4b344204bc3a3c0baecb06ca33a9629617cf43674b0ecd69e5c83040203b"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.138-c3afe63-x86_64-apple-darwin.tar.gz"
      sha256 "3fb82cb626cf25d9dbc7ec78d83f30fedfbd3135a3a73dbd4f40d1680dd9282e"
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
