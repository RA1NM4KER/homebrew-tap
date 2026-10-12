class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit 65dd11f)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.171"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.171-65dd11f-aarch64-apple-darwin.tar.gz"
      sha256 "d39b64cb01902c36a8f10b1a389b2935c798f5448ad7e39e0c2ef2c5cf145d6d"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.171-65dd11f-x86_64-apple-darwin.tar.gz"
      sha256 "0c2a12a55c2a6b8e9c7039bf864fb02ee67c14a071904489e5b8dccfcd87bfea"
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
