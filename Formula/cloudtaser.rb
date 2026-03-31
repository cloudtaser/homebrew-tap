class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.4/cloudtaser-cli-darwin-amd64"
      sha256 "4eb627e1c035ee2b2860c25d6884ad1ca9d896c88a7490756bffb8b2403a3454"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.4/cloudtaser-cli-darwin-arm64"
      sha256 "2aa732d353e185e291ce09062c032238125d062b6c4a920ef6217d1e500df744"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.4/cloudtaser-cli-linux-amd64"
      sha256 "47765f12f6d6d76333d3f1dd239389ab594995e06bf84b971177c8fb543fc47a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.4/cloudtaser-cli-linux-arm64"
      sha256 "425a763f30efd29a41c297e863aa6fdca497e9dd7876a8fcf6f089698bcd32ff"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "cloudtaser-cli"
  end

  test do
    system bin/"cloudtaser-cli", "version"
  end
end
