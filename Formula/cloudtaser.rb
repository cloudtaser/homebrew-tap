class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.25"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.25/cloudtaser-cli-darwin-amd64"
      sha256 "89f4946092b6de00e222116736a537edeaf480dfdd57e74679f840f74fba0bc0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.25/cloudtaser-cli-darwin-arm64"
      sha256 "a057c3e8024e5037f492b64a1380f4d4cf7b777d985cb5151c75322274840395"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.25/cloudtaser-cli-linux-amd64"
      sha256 "171794e55cfb64b410b9ce431c8263db2335221b385ec5735e676f093c882999"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.25/cloudtaser-cli-linux-arm64"
      sha256 "c3f83fd293c2687ca43a4a0c078e706ab15c8164ae1558a3f6bb38c582c2782c"
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
