class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.10"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.10/cloudtaser-cli-darwin-amd64"
      sha256 "367be6924f10e3c78efb0e68c828bd2d5c2a18f037216690a38f28f1cea39a45"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.10/cloudtaser-cli-darwin-arm64"
      sha256 "a8be33ea89700127ab7da19febe946f011b078aa5a001fcc3bd761cee3716dfb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.10/cloudtaser-cli-linux-amd64"
      sha256 "7072864ef284a61cde9dd12fc709c9f889b91716471abc788f89562df89500fa"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.10/cloudtaser-cli-linux-arm64"
      sha256 "cfc94befe2c5580d47d2fb3dcdb8314d82d7fa7f850ab6b459a264bcedaf5e5b"
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
