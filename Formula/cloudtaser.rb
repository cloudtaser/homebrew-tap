class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.24"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.24/cloudtaser-cli-darwin-amd64"
      sha256 "deba943a9bb2cf8a8bb9a251073496facf7a43d7cb4e56fcb4558af4f04170a3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.24/cloudtaser-cli-darwin-arm64"
      sha256 "cb3a8fd3e0f12dd99015803e793b44114e64b95e38e330c46b689109aab812ea"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.24/cloudtaser-cli-linux-amd64"
      sha256 "fe12354366b50fb6d88be0dea73aa2556875ec3814ac065999b107aaf98c4a61"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.24/cloudtaser-cli-linux-arm64"
      sha256 "1103ff56edf92dfabf1130b4a39b06f9096952a646d2e334a2d9dbd1dfeda7fb"
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
