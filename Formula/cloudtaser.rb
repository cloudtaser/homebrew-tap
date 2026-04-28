class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.14"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.14/cloudtaser-cli-darwin-amd64"
      sha256 "17c70c66ff1cc3c97402cdc6d083d8b5567011e2d5b51b3e9ba08c207114bbe5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.14/cloudtaser-cli-darwin-arm64"
      sha256 "40b23c4e470b727e4c9aca8038e368497101d787eadfa27627e9222ea3427d13"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.14/cloudtaser-cli-linux-amd64"
      sha256 "811b6a8dad01710ce3070dee88b75a8f5a8f20c15743884332e75383810cfe9b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.14/cloudtaser-cli-linux-arm64"
      sha256 "e65be95a445cc301378584fe2a01b219d635ee91ee5028837d59d7d10a0b0354"
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
