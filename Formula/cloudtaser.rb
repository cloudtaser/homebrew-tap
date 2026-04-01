class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.7.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.7.0/cloudtaser-cli-darwin-amd64"
      sha256 "70af7440c8a516fc2c21c547d16293276e7ed95a9283bd6c7de8454fe62fe1e8"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.7.0/cloudtaser-cli-darwin-arm64"
      sha256 "06be101c882da748329a376ad96f24b78d11b639047e33a35ae4bff1795760f6"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.7.0/cloudtaser-cli-linux-amd64"
      sha256 "1b91556c12a55ef2e37ff0b01b9ccd39b2f6cee8db3b2655a48ec3bf3d817e0d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.7.0/cloudtaser-cli-linux-arm64"
      sha256 "f455aede4d8b12c1c9b7e29fbc652abd7328d346de257c43046cee1222310c8e"
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
