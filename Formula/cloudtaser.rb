class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.4.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.1/cloudtaser-cli-darwin-amd64"
      sha256 "b7420af8b58192ecb5874a93ce0279b2b6eb22f0aa7b305be4e7e912a26a03a9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.1/cloudtaser-cli-darwin-arm64"
      sha256 "67c82d6f9cfe69d54552da541f5c621f0a5cd73dbe0ac5ab421e857fda423d33"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.1/cloudtaser-cli-linux-amd64"
      sha256 "37f4ed520a73f429db0b320e6414d4e0bb3a125ff247b5e7dd64d35aa20616fd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.1/cloudtaser-cli-linux-arm64"
      sha256 "73f2cabb73306544fe5adb1fd0b01936f2cf6d31661dcba6816fd15558a45647"
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
