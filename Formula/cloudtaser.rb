class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.28"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.28/cloudtaser-cli-darwin-amd64"
      sha256 "004859f81607dc811e4832effa0e19325d02f8070cea75187bc5ab7bed6e57aa"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.28/cloudtaser-cli-darwin-arm64"
      sha256 "7bfc6ac349398ab21a165a2d2e30eb806d263dfd9f423b97121e982dbae91b66"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.28/cloudtaser-cli-linux-amd64"
      sha256 "d2b72c5752be6d167156a47002ef86ea09e3d9f2132a1a4355f253aa7cfbe78e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.28/cloudtaser-cli-linux-arm64"
      sha256 "2a9388191da5317733329439e4aa3be17de77c48e44be491e248e058610ae7af"
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
