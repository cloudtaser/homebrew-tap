class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.9"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.9/cloudtaser-cli-darwin-amd64"
      sha256 "0c1f1d874b8ebbfbaa9d2e9bff2b69dfd028a66dcfc90dc984eadb97f48f4e04"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.9/cloudtaser-cli-darwin-arm64"
      sha256 "45f8e741d6a4aba2c318181f3bc7fa9e0c3394858cd2690e24937b1a751820ba"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.9/cloudtaser-cli-linux-amd64"
      sha256 "f3a7edc0ab5146930f95c4d21b4b5c0d1f0edf53c2baedd65fa8fa9dd080c277"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.9/cloudtaser-cli-linux-arm64"
      sha256 "1d083643fb1877065c52660d42b4d5e7ec324217cc8bf222c2c4ffbe31fa5079"
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
