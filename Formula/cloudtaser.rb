class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.8.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.8.0/cloudtaser-cli-darwin-amd64"
      sha256 "6e0d6a2968f532ba783785825cb07bd324221f76e22a86999c817056b190ae5a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.8.0/cloudtaser-cli-darwin-arm64"
      sha256 "9f86d1305043fc9ff954e47b5a950aeabb59faadf87295029efd98ec63f792e3"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.8.0/cloudtaser-cli-linux-amd64"
      sha256 "e6c736e92a295fdc4fdae5ca742faba593a7227c3bf265624674a2be8b3a6f83"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.8.0/cloudtaser-cli-linux-arm64"
      sha256 "46fca956b0f26f1a77cf23713585ca7e56b5de8fef4ebeec546dc4c83c65c9f4"
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
