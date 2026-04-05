class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.11.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.0/cloudtaser-cli-darwin-amd64"
      sha256 "7aca1ab6ae36ff7de1598cfff567eade3e25839c6ca7ca4995de75f3df3feaee"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.0/cloudtaser-cli-darwin-arm64"
      sha256 "09059c10e3262fd2828711abe1b8c794427ced8281eb75a00f6a0e91817a10c3"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.0/cloudtaser-cli-linux-amd64"
      sha256 "a2d8aa65e689fc1218bdac7c28156d845755d078717ff8976c687a6dae167eac"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.0/cloudtaser-cli-linux-arm64"
      sha256 "5281574677e020fb654eaf601d1b05bbf2e7c5b0209f26c099708620b0aa0a61"
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
