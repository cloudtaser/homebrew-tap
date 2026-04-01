class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.5/cloudtaser-cli-darwin-amd64"
      sha256 "6affca9da0ceaf45e4c95912bfdadba5b7562d23fa3e97197e04ba8c44db9849"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.5/cloudtaser-cli-darwin-arm64"
      sha256 "1f805ea55090a0c4b9e7dc710bd6ab5ee9ef997f9b8c9c99d3c176afd68e51fa"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.5/cloudtaser-cli-linux-amd64"
      sha256 "a761d0f7e1339215711036656a0a52a3749f26571313d5e9ed0dae7dd97c9b9b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.5/cloudtaser-cli-linux-arm64"
      sha256 "50e89ff5cc1dc7cab592fc00be8b3211d0fbd1c23c8f89f17b2c7a10b5168a2c"
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
