class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit bb2fbcc)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.176"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.176-bb2fbcc-aarch64-apple-darwin.tar.gz"
      sha256 "694159d24b2a91c28ab54b4f11202948b06b6277bcd9e2d17d4a711719706353"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.176-bb2fbcc-x86_64-apple-darwin.tar.gz"
      sha256 "0f425dfcfd4db666243ae0d21a15750d61f0c4087b4a9824fb84e23212da8f24"
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
