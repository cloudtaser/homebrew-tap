class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-amd64"
      sha256 "71c4255b10f05df146951a42dad50f257c7e24c02063d6d1a39b7f795436c190"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-arm64"
      sha256 "a7f1184f0768b4fe6eb17fc9f7f772b6cb4a9a14e6f5db2ec1cd8ac584d1f464"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-amd64"
      sha256 "87fef788ac05f8aee140128c592dfc46aa41300a660ca407eba4193b0b022af5"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-arm64"
      sha256 "8247c7539486e2817fa01ee3881e25f190e5bbdc69d26ca677f8a4ce73bbba57"
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
