class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.1/cloudtaser-cli-darwin-amd64"
      sha256 "4e07012759b506ccdb1889d21469678212a5842dcbbc02e6ef93c1afb506ffb3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.1/cloudtaser-cli-darwin-arm64"
      sha256 "5355dac4e9185a133a0ef9ad8c5fa28307891d1eb595cdb81ea246c6ed6b0d8d"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.1/cloudtaser-cli-linux-amd64"
      sha256 "e9536ea232b8bdb4ff2284128d547ca3df467b5ab9d1c02770b53ef4c76bf742"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.1/cloudtaser-cli-linux-arm64"
      sha256 "5a579cdf7dc3724881a912b16be59f21f30e2bad365e9eb20c88250819aa0069"
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
