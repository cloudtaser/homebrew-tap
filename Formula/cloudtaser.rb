class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.1/cloudtaser-cli-darwin-amd64"
      sha256 "31fcd88840c3183622f3f0a3ccf3a67663f69220e63d8a10573ac7e8aa72c649"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.1/cloudtaser-cli-darwin-arm64"
      sha256 "d082a7a5f3324041668357976136a548129be1f40e354ba9254d8d7590b7d5d2"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.1/cloudtaser-cli-linux-amd64"
      sha256 "932451a590247dc31650ced2efe879215b74c84386a9b5f575c9702ba73865f4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.1/cloudtaser-cli-linux-arm64"
      sha256 "663599d7a35475155161c6d6015ab3361c59341ca81d60b41c5e0c15e36e564d"
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
