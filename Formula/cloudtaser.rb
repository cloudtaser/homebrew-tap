class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-amd64"
      sha256 "a3e7fb89039b69a969713c37484eace228168977997ca00a431b508a08e77b96"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-arm64"
      sha256 "ac3d097b4a84e0e748a03678b51407641cd1210f75c281eb28814806f6b31afa"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-amd64"
      sha256 "0c568008b7e2a9bedc04790251758aec25f7fcbea65094814a06b745586f743f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-arm64"
      sha256 "8db5b590c39bc98c01ba5b013b4c1d802890dec654e64a641b32e355cc18d199"
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
