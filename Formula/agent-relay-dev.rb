class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit a09a449)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.151"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.151-a09a449-aarch64-apple-darwin.tar.gz"
      sha256 "dfac5ced0f11c5071e5440e2719c2e17dc3941d92c0f0d64fc46a60d0c002a7c"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.151-a09a449-x86_64-apple-darwin.tar.gz"
      sha256 "8688899e4dd0afca1569d8e348c9eef5295cd56b4f7e2c8718f4d7acc52de019"
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
