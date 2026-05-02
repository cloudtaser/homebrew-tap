class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.18"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.18/cloudtaser-cli-darwin-amd64"
      sha256 "7a3552fceeb31fbe1ade9c3eb6f453054d1db944bbaec54066103d391806b66f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.18/cloudtaser-cli-darwin-arm64"
      sha256 "ed9ddccb3ef624ebf1db5ef87a88d761b093e7cd6413a938ac6ae04a839b6014"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.18/cloudtaser-cli-linux-amd64"
      sha256 "42fc616715b93cf7d6a88562dce9c9288a91d1bcaf2a96339b777e89f6c475f9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.18/cloudtaser-cli-linux-arm64"
      sha256 "e4951f05ddcb97bd35817a795f327249644b568d7c5a9429d9faed5ec064a2f3"
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
