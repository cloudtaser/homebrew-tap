class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.17"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.17/cloudtaser-cli-darwin-amd64"
      sha256 "5c5f845fb77d48f3daea464f68aafb531a7014532ae6b6d92c0e9aa8fde6aad6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.17/cloudtaser-cli-darwin-arm64"
      sha256 "6ad5fef839b8f780ce16ef50009e84a9980b8bf27437242cbd9559ec6131e1ad"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.17/cloudtaser-cli-linux-amd64"
      sha256 "62810fd40296e32f7d5168603e30001e711a9b7cde85d9fe62b5ccbcdef64991"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.17/cloudtaser-cli-linux-arm64"
      sha256 "b32ad42fe945eef4b709dc28df93661cf4493a188caf66395c0204185df213e9"
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
