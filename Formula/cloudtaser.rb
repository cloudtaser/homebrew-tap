class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.9.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.4/cloudtaser-cli-darwin-amd64"
      sha256 "37fe185e1648c662290dd342ff43a6a8c1dff7d9a2a18e46a6d609fc276d2504"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.4/cloudtaser-cli-darwin-arm64"
      sha256 "1f60dbb5938a00ce901119a471ecdbdacd9fc8c5addd02b76dd6188df6487df9"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.4/cloudtaser-cli-linux-amd64"
      sha256 "ef6022d288d3a002645c5756586bbb2a4ceea87e03f3b9ef8de92feca486fc40"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.4/cloudtaser-cli-linux-arm64"
      sha256 "6d87ee1bf189182dd773d2fa7ab6f7ef7d3e45d73aa219a7d4dc797399b76cd2"
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
