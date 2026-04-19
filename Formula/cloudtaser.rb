class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.3/cloudtaser-cli-darwin-amd64"
      sha256 "061b522a509abe7b8b80d9cdc100721430a3a193544b0f855c53369fbdf07268"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.3/cloudtaser-cli-darwin-arm64"
      sha256 "243b44cbb09620fe75533fe1fe7aa76fd2e7f0104df3334efce684189a34617b"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.3/cloudtaser-cli-linux-amd64"
      sha256 "e8fdfdc8d07502b774a5785ca38a6b41c596a534024433a07aca0b4535d81b26"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.3/cloudtaser-cli-linux-arm64"
      sha256 "7699ec18d3fe750c0f53518c89274143cdb68424cd80e87f83cee9713af0fb7c"
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
