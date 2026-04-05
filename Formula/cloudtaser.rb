class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.11.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.3/cloudtaser-cli-darwin-amd64"
      sha256 "94006afa93d3de8c730c25caca4327cb3e7a19f27f6ede376a55193a2892beca"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.3/cloudtaser-cli-darwin-arm64"
      sha256 "a77d6acf181edf7a6043fccc8c65f6418a0d42265a3190a78a4f99efbbb0838c"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.3/cloudtaser-cli-linux-amd64"
      sha256 "d6004a4441517858aa24a01ef249bf0848cfdfcc6cf86c6790162ccb539ce6bb"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.3/cloudtaser-cli-linux-arm64"
      sha256 "ee8d238de328c738eb893b1512985fdc1cfa40b04ad96d8cbdb98ceaa156720e"
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
