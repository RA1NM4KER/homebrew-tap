class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit 395cc3d)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.161"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.161-395cc3d-aarch64-apple-darwin.tar.gz"
      sha256 "6da9b3508aeeb19da05be9551f5ef8c3d15ad2b915abd20ea73c510f3c487111"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.161-395cc3d-x86_64-apple-darwin.tar.gz"
      sha256 "d617bfb6d84f2bd62869d104f110a87f370df41ed6da2279f34089bcb8c636e6"
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
