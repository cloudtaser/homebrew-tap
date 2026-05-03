class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.20"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.20/cloudtaser-cli-darwin-amd64"
      sha256 "eee197d49cf7ee26e37c46cb66b64c5771e7932b7bdb3851b3fe351f83780a81"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.20/cloudtaser-cli-darwin-arm64"
      sha256 "3049b71874c222cf9fc0ceae69459ec7dafe97898e704b34d63a00efb8af0d1d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.20/cloudtaser-cli-linux-amd64"
      sha256 "fdf68b07b6e78da625968c0a8cbe9b0db0d5d1ad0118a8d40fe35437da570029"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.20/cloudtaser-cli-linux-arm64"
      sha256 "10244c8a1c9df8f2eb1b2cc5d8d0fcbc235890ebed7df4bba2d3793a0dcfd15e"
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
