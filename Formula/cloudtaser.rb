class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.6/cloudtaser-cli-darwin-amd64"
      sha256 "454fc4f435337af18b44fdedd7ca636c2f963005e66367aa8d559a48d3e69610"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.6/cloudtaser-cli-darwin-arm64"
      sha256 "1231e2f63fb0c74477c5f3e4859483a174a0524bb0a43b156d56401ab8252b6e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.6/cloudtaser-cli-linux-amd64"
      sha256 "187dc67878cd6bc6e9978eccbaec95d497240082399671374f3b55a5a26db443"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.6/cloudtaser-cli-linux-arm64"
      sha256 "12e9c337e6e0ed22ac0ccc772d8c96eb736143becadc05a23a6e474ade7d358c"
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
