class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.23"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.23/cloudtaser-cli-darwin-amd64"
      sha256 "2cc70fdabaafee481a2e00e9a2a38639b96236bf94340e7f817d200e8cd8f0a1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.23/cloudtaser-cli-darwin-arm64"
      sha256 "0bddf7e4979d6518f1335869a91854a6ecc1810165e4d328f440c57279a9db9d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.23/cloudtaser-cli-linux-amd64"
      sha256 "d2eb6538c7d7dc9fe87ee5617d86c22ea63fe4646366fb50ee9389a1e52e8f74"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.23/cloudtaser-cli-linux-arm64"
      sha256 "9033ff88a9ef70f91ab636a9f121fd3c9bcf6efb7c7b291fe7440cd729b436f1"
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
