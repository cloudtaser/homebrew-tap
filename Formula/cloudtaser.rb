class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.11.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.2/cloudtaser-cli-darwin-amd64"
      sha256 "fa22183868ada95b0d4b5174f90d6655ac9ce0f40b108c35cab833a09bf69468"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.2/cloudtaser-cli-darwin-arm64"
      sha256 "09d976683a4405fc42b4eab85c96276003eda28b2db07e2c5290e5a71c1aff5e"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.2/cloudtaser-cli-linux-amd64"
      sha256 "346d26668d1d8d5222d34fa431caf36ce3c2e824d149c18e2b1b344219728c35"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.2/cloudtaser-cli-linux-arm64"
      sha256 "f6f07d4dc36f44c71de6d09d547347abc068204f1a282d6632664cb0bcb98f92"
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
