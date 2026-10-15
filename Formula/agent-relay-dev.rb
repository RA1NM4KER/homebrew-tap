class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit f1e8e80)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.5.1-dev.185"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.185-f1e8e80-aarch64-apple-darwin.tar.gz"
      sha256 "dd00fb4862375ebd414259b3530a9d58be4c1e4f6c1b2c72b84758bf17a81a2e"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.1-dev.185-f1e8e80-x86_64-apple-darwin.tar.gz"
      sha256 "31858441ba85be24ff72d43cf6f90eab08007d04f310ec876cabc494f75c5bc2"
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
