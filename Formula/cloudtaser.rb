class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.9.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.0/cloudtaser-cli-darwin-amd64"
      sha256 "e88e26af927085895420273b4c9e011e0190c4cd60cff8c1da67d5be516e8045"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.0/cloudtaser-cli-darwin-arm64"
      sha256 "b26d46dd8e3654928282267c908c131caf6c6362468d7c29442b086676959cbb"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.0/cloudtaser-cli-linux-amd64"
      sha256 "78998ba00a0c9aa3601e40b0e8c63781398892f5b5ee2e1e65128effb13e66d4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.0/cloudtaser-cli-linux-arm64"
      sha256 "7d7e41f60a057d58d0f057ed78b0ac02b27e853a5ccfa55af2ec4adf771db8ab"
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
