class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit 46c524a)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.5.2-dev.193"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.2-dev.193-46c524a-aarch64-apple-darwin.tar.gz"
      sha256 "f39f03ccaed833becb805ce1bfede543937e1bf278d0207fe796dbf639c0e79d"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.5.2-dev.193-46c524a-x86_64-apple-darwin.tar.gz"
      sha256 "e00ab90b18a983eb71c55b9542bf536ff0c08c19dd693dd2962f26ad07bc4630"
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
