class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.4/cloudtaser-cli-darwin-amd64"
      sha256 "c48b21df01ce45f66a6ff316be7df2f3867047481727e2de63d59795d03d6e7b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.4/cloudtaser-cli-darwin-arm64"
      sha256 "bb14fbf74563c749e07b1c6ecf91c79b38c11820dd2be737c806e588384f8d72"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.4/cloudtaser-cli-linux-amd64"
      sha256 "1b28535f339764b7db97140094c1c869b1103ef085055382357e72fa4cf09272"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.4/cloudtaser-cli-linux-arm64"
      sha256 "f72c1838d83bb7a4777da083b1be316ad8a40fe291666f597986650cfc03da2b"
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
