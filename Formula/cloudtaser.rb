class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.6"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.6/cloudtaser-cli-darwin-amd64"
      sha256 "7498e7d8f7c7db36c5d1392c7706df728a8d42ef79fdc880f4c1c1ed3f50f427"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.6/cloudtaser-cli-darwin-arm64"
      sha256 "0abc46f819411c5a6771cb4e851050d348c75a6500c56b47282c62de3929b5c0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.6/cloudtaser-cli-linux-amd64"
      sha256 "2131c61ada4418b23873052f6b723ea6a21db960a2c9bab09adf4c4f7d902666"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.6/cloudtaser-cli-linux-arm64"
      sha256 "33679fc58d247cf397018110049e49a8d845a4a95f762eddb20c8760995d77b6"
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
