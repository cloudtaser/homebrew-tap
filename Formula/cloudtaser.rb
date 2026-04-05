class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.12.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.12.0/cloudtaser-cli-darwin-amd64"
      sha256 "1b4337d56fa7b0b1677a2418322b8e764859833005a8ac2eebfe52b7896c7e29"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.12.0/cloudtaser-cli-darwin-arm64"
      sha256 "479f69916d2e4afb206097dc93afde668b0581ab2c0237d57e783c36ea335a03"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.12.0/cloudtaser-cli-linux-amd64"
      sha256 "46f879c78ce914dc5b119c6bb1c7fb7e30b8da981a2349e9744c35bec12cc632"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.12.0/cloudtaser-cli-linux-arm64"
      sha256 "804c02b676eec0d8bb26f5ee930a3e9a02eddf237f4ab590f6873405a942d6c9"
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
