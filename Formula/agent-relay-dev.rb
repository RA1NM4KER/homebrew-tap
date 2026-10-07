class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit 215423f)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.165"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.165-215423f-aarch64-apple-darwin.tar.gz"
      sha256 "9b0021bbf306619ea8cf019ce745ab46b4eb958ccaa37eab9a607ac8f814c45c"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.165-215423f-x86_64-apple-darwin.tar.gz"
      sha256 "4224ab886ae09c1058f5269608142f376d6129b3287c78a45de3f5bb6c984859"
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
