class AgentRelayDev < Formula
  desc "Agent Relay, bleeding-edge dev build (latest green main, commit d8f66ea)"
  homepage "https://github.com/RA1NM4KER/agent-relay"
  # Tracks the rolling dogfood pre-release, not a tagged version. The dogfood workflow renders
  # and updates this dev-only formula after each green main build; Formula/agent-relay.rb remains
  # owned by deliberate stable releases.
  version "0.4.2-dev.157"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.157-d8f66ea-aarch64-apple-darwin.tar.gz"
      sha256 "8e5d38c65168a9f171b8f728fdeef5fc57f711ccc3bded4d37fcfa410d97f166"
    end
    on_intel do
      url "https://github.com/RA1NM4KER/agent-relay/releases/download/dogfood/agent-relay-0.4.2-dev.157-d8f66ea-x86_64-apple-darwin.tar.gz"
      sha256 "c45e46bf9646ef3f463c3da5410f18dcef5d9c2e2556c7dd8ce7a1835587d965"
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
