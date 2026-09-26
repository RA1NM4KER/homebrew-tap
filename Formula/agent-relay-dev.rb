class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit a90ed6a)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.140"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.140-a90ed6a-aarch64-apple-darwin.tar.gz"
      sha256 "4684feef05b9b5470159376091100aeb88806fab7af68b9a2137a89a4c72f6d7"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.140-a90ed6a-x86_64-apple-darwin.tar.gz"
      sha256 "6a4b8e6c3200268369fcf7549ca105d37c82042f89bad34a5c28747d99cd3d58"
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
