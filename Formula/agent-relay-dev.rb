class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit d9fc4a6)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.163"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.163-d9fc4a6-aarch64-apple-darwin.tar.gz"
      sha256 "94abc508c02290278512c84a04e921e93f6178dd792981bb7123a266882534b7"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.163-d9fc4a6-x86_64-apple-darwin.tar.gz"
      sha256 "d0fb3ec1d782bc53bdc781b473eac666c71a1c400d02a17db917e8e7cb130e4b"
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
