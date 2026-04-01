class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.9.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.1/cloudtaser-cli-darwin-amd64"
      sha256 "d122e62cc015c250e17254d0675552116e28dd4af073dd1856ac740a7b45e14a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.1/cloudtaser-cli-darwin-arm64"
      sha256 "e4d203e96f72696c1356c47e9609cc3138f927d05933a423ede55a73feec0a03"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.1/cloudtaser-cli-linux-amd64"
      sha256 "4db8ed7dc90aba0d77d4285c0cfcb3a83f1c56b0edf834a66678ed90dbfbb38a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.1/cloudtaser-cli-linux-arm64"
      sha256 "597ca5f582afefa6801eb0feb2bd1c7f3686ad74e2480996a81a29bf17bca13b"
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
