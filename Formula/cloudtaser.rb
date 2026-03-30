class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.5.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.5.0/cloudtaser-cli-darwin-amd64"
      sha256 "41af913867b1bc4c79d2c17a1708fa004f17d918b295eca1a8e050e3ba422935"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.5.0/cloudtaser-cli-darwin-arm64"
      sha256 "8eb0a431149acf37095dd0a5794f0c9bcfba001a0f0c7f44e741ef63539b559c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.5.0/cloudtaser-cli-linux-amd64"
      sha256 "ce0b17b877cfccdb25ef227d2310cfe4275b58bd7d4d4b58dca64b858be31176"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.5.0/cloudtaser-cli-linux-arm64"
      sha256 "6e12ecb88cc691e85691767ce3b59dfa768b1127e7e7d7f4d4ec8a0bef6ae8a3"
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
