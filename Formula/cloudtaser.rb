class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.11"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.11/cloudtaser-cli-darwin-amd64"
      sha256 "c1218147347a25e2e8f07f4eaaacbf44f11ff5637e8e113f77401ea6353bfeb8"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.11/cloudtaser-cli-darwin-arm64"
      sha256 "4ef722e6229885fc046fa3d304b1fb4bbcd1987b628f4687f2d1f7047aefc261"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.11/cloudtaser-cli-linux-amd64"
      sha256 "1464b0008167a9ffed2e0beeeb999453d21d17db2b888df2a5b91d37495f1195"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.11/cloudtaser-cli-linux-arm64"
      sha256 "d3eb36479908138a32a7fb6dfe0061e42944d5b67ccf042efffa8a656d7575a3"
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
