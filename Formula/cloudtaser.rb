class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.13.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.13.0/cloudtaser-cli-darwin-amd64"
      sha256 "d592cf027a6dda4f4cadf006df176c4a8ab41e2da89de8375188a99550bb3b98"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.13.0/cloudtaser-cli-darwin-arm64"
      sha256 "d154f4a1b766d5ce81495580b02de96b7eb046dda272563744b9b44aeb3bf73f"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.13.0/cloudtaser-cli-linux-amd64"
      sha256 "e04a82bda9978611645e1acd602bea5b38bb90f7c150b4b8d7391f6735545563"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.13.0/cloudtaser-cli-linux-arm64"
      sha256 "d5faa8d35fb9a77be9850b6d33c85b6d5e4a51b97daf500947f09ba3c3017166"
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
