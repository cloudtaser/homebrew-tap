class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.0/cloudtaser-cli-darwin-amd64"
      sha256 "1d999ec3929ece9dd0c066c047c99b4b76fe7b2fddbed0ed5317753332989923"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.0/cloudtaser-cli-darwin-arm64"
      sha256 "bf9513a0ec7770d590a082b96103f557a373654adb2b24de6fc6499aa2cfc0b8"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.0/cloudtaser-cli-linux-amd64"
      sha256 "6fbd466629424744e23a7364149a5bd19a087535cd7e19032575425008b9d3f1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.0/cloudtaser-cli-linux-arm64"
      sha256 "b7511b27117002bcecd9300c48598b6e94a185e600a2734bae1bd08f6d4e0ad3"
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
