class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.2/cloudtaser-cli-darwin-amd64"
      sha256 "84f08aba3aa771c06535d39d254c569e0af9683ba3b664f6378c801a09273846"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.2/cloudtaser-cli-darwin-arm64"
      sha256 "b1b87bec640f808c89d3ce64e8b5d1da3398abbc9165351b576d3e0d9ca19fff"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.2/cloudtaser-cli-linux-amd64"
      sha256 "89f22212f87233a449130288ff676df8083dbbf56f0b50a401e7cedd5e3cc158"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.2/cloudtaser-cli-linux-arm64"
      sha256 "ad915805829c9b2f03fef22a818ea4e0b5331e112609d5f8ce0be43c748e1d79"
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
