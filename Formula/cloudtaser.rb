class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-amd64"
      sha256 "bf58b27561d757bd1c18013816576c154cd64f63407a81ffb14437dc515c4315"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-arm64"
      sha256 "5e10ff11f3ba0d4e860a366860b0cd8853ea45332ca4eaf4a2cbb40f40e561d5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-amd64"
      sha256 "a0d9157f203e2b21f43964cd1e1132f70ff279a00f2c2de6e03bbe74b765bf6c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-arm64"
      sha256 "0141597f3013b47d0180044a6897e545c54a57c35cf0d7e51662b7b5dd652967"
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
