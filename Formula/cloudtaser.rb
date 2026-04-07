class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.14.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.14.0/cloudtaser-cli-darwin-amd64"
      sha256 "0e09224cd06c6c4ff45e9086f793c32962fb90d58a6095b3901519057e3e5c15"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.14.0/cloudtaser-cli-darwin-arm64"
      sha256 "af53b7360f3e2e20a9b4aa469d9d469edf50305f1b6d9df941c9a2c0aeb50949"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.14.0/cloudtaser-cli-linux-amd64"
      sha256 "bd6d072b207639ea66bd0f4ab500f4f75a474bd849c51d5689f6a57d8857af7b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.14.0/cloudtaser-cli-linux-arm64"
      sha256 "a7fe24207cea8cc44491d3ab30308b0940261340284aef89c9b86bbde4425130"
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
