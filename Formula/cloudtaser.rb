class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.15"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.15/cloudtaser-cli-darwin-amd64"
      sha256 "d42d215cdc4e4bb1dae9483a160d59cc9790e78962385278736c6af0f96b3191"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.15/cloudtaser-cli-darwin-arm64"
      sha256 "0e198ce9b71ff1a95ef9ebd316bf4bcec58c17d066f21d40e7e0fd74cbc65acf"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.15/cloudtaser-cli-linux-amd64"
      sha256 "bcb1df0006958a896093f8cefcf248f1c3d10ccd1f176c6ba759d71878731159"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.15/cloudtaser-cli-linux-arm64"
      sha256 "49724f2f27f95a0def33b296dfe55949ef7cc75d7ce26a4868488b6958614446"
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
