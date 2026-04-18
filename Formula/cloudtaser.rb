class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.8"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.8/cloudtaser-cli-darwin-amd64"
      sha256 "088f25bee54ad25782709e3dbbdd6189799021c7f2a89c74ac666118680fbe29"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.8/cloudtaser-cli-darwin-arm64"
      sha256 "44cf0daef48b08bf258a45ec5b84aa0586d5fda6f47d039ff9e57200d8aa54a0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.8/cloudtaser-cli-linux-amd64"
      sha256 "fa1cfacc20e0378e5e17ec7b1823510dc6e2f4fcb2a5e183b8efa5ee4514f2e4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.8/cloudtaser-cli-linux-arm64"
      sha256 "280f674bb1e03d626afc48b0251fbdc646772dd39a602b60497b44cad7727121"
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
