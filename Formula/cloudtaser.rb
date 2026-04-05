class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.11.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.1/cloudtaser-cli-darwin-amd64"
      sha256 "1ec1fa889c9a6fad47852ebf51230c3867213f55645a2cb41e52f8cce3598b22"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.1/cloudtaser-cli-darwin-arm64"
      sha256 "7c71f9e05177c52cc821d5d6b0f700f6f75aa2451337b10d31f494af979287c8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.11.1/cloudtaser-cli-linux-amd64"
      sha256 "0381de9f9acc612e4dee6b784766e8d08665697371db12efc651916e2b4773a4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.11.1/cloudtaser-cli-linux-arm64"
      sha256 "549b654a81c52074dbe8943c636ab56c3626d9f99913abe3759d5d40bff54b15"
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
