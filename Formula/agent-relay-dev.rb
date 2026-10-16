class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit 0d7f428)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.5.1-dev.190"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.190-0d7f428-aarch64-apple-darwin.tar.gz"
      sha256 "edd617125bd321d200fa7fd733e346a085d119c0b52870c6850d79ecf78e78c6"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.190-0d7f428-x86_64-apple-darwin.tar.gz"
      sha256 "38b98cb7a9517d65a31184eb0f18efc63382f559dd567e56947fd2a68cb87398"
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
