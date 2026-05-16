class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.27"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.27/cloudtaser-cli-darwin-amd64"
      sha256 "3164491b4944f5dda9a236f807be71500083b6dab38d9584fc05dc570fa83a07"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.27/cloudtaser-cli-darwin-arm64"
      sha256 "b94094b40d27f606af58eceda68ca79b5de788ca279d49576a197136b1671ed8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.27/cloudtaser-cli-linux-amd64"
      sha256 "c77be1c61e0cd0fd753b4c697d776a3ee5e4224877c96d4f372890cf48d3a9ac"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.27/cloudtaser-cli-linux-arm64"
      sha256 "67c3ed7b6a45658beb78544f199945ab556ea61c243329f419b15b0eb1050599"
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
