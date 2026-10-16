class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit d0a825d)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.5.1-dev.187"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.187-d0a825d-aarch64-apple-darwin.tar.gz"
      sha256 "1acb15dba098d03fdc92d4ff162cfc89733f01559d38fb6c66c792be5b586c34"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.187-d0a825d-x86_64-apple-darwin.tar.gz"
      sha256 "22ed02e7d70bfadd1c975ee8f784325aea5f106fdc5e766a7c875c01880ce1af"
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
