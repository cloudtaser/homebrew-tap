class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.15.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.15.0/cloudtaser-cli-darwin-amd64"
      sha256 "fcb877c797e5f3f716939a962b995a4e950d73d701727a69fb3d39925c5544b6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.15.0/cloudtaser-cli-darwin-arm64"
      sha256 "2ce714a0bf46c52a5edfa9ebef83b494b751bc34a7a3c744b63db9fb9ce4a6e8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.15.0/cloudtaser-cli-linux-amd64"
      sha256 "30169c6ad6de8a1aaed287564287f2b04e2e4937fa8ac45d3075077959ca92f7"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.15.0/cloudtaser-cli-linux-arm64"
      sha256 "de0d0bc1a5103697799866c9364ac8ea01289338f58f94872621b9168709f7ec"
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
