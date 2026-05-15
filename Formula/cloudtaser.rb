class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.22"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.22/cloudtaser-cli-darwin-amd64"
      sha256 "1c212b541dcb1effb214cec13caddb9b52912023ad2dc4cf9d7f3b614a991b86"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.22/cloudtaser-cli-darwin-arm64"
      sha256 "071ef754d1a94981a0d41062d8ba2bd4d80b8931d908791bb3489c9aae610ca9"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.22/cloudtaser-cli-linux-amd64"
      sha256 "a90cc8e22fe5c1e025b98283031102494fa7d5a737411a9bf4b9d77d9f4c7ce1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.22/cloudtaser-cli-linux-arm64"
      sha256 "170d3950dc80f5ff2bc20446eb9aa543158f35705524731bf243b1d877f18210"
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
