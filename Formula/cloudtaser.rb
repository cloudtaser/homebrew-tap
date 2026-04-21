class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.12"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.12/cloudtaser-cli-darwin-amd64"
      sha256 "5d5939895c005e41c16b991c2f67d465d712a12529a7ae09862cedbedd46d455"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.12/cloudtaser-cli-darwin-arm64"
      sha256 "77c9188e080571339b29da2338b0a0303d5155b46ecc0690af6809a32b552014"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.12/cloudtaser-cli-linux-amd64"
      sha256 "24f4ff69345196806816d8ae58d9a46b34c9b344d464f2e2bc675671a6784abf"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.12/cloudtaser-cli-linux-arm64"
      sha256 "a43f481918263f9925196ef726eb1fe92544b258076aca6176c3c1ce51fed413"
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
