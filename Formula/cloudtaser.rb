class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-amd64"
      sha256 "a943b8a65ca3175e1440f4f2e9185523ffd0b6974593831cca8520bd36840f93"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-arm64"
      sha256 "a33a892fc9a43e623e03858cdffeae8a286e86994c5e3d4725a92ac7c45d2576"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-amd64"
      sha256 "365fb386f1d8707af0f1f243f6b2e343f40b37b0d3df87c15365d1d7f9a2f425"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-arm64"
      sha256 "b7e5096bc8935b6233e89ba3bc4737d8a6809c3c72d0a578b281dfbba22ff963"
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
