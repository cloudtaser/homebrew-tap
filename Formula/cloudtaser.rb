class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.8/cloudtaser-cli-darwin-amd64"
      sha256 "1438d99dd3c6377218ef2e4a9f0c5ea32928be81274a81fa888fc034636232c3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.8/cloudtaser-cli-darwin-arm64"
      sha256 "354db2f6f92ee208bb0befbb8b63241ae1c2e5e69cfc10548ea5353269fd7c7a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.8/cloudtaser-cli-linux-amd64"
      sha256 "8e86336e91d937622ef3edece852860cfbbd681f442ecc970777a352eae1769b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.8/cloudtaser-cli-linux-arm64"
      sha256 "5034652ad0bf73c3ed0ccd77b571a73a76fd9e9794850374ac582044b6b1bfd9"
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
