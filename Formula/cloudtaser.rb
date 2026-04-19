class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.2/cloudtaser-cli-darwin-amd64"
      sha256 "26ae1a3c8330d7830dae41b888d69057cde1d2fcec724eac0ea57f4fe13a1979"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.2/cloudtaser-cli-darwin-arm64"
      sha256 "7d0c06d1a64f5f820d1045db1d1e0889f16348856f7a0f1efc5ae084cc1a4bb6"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.2/cloudtaser-cli-linux-amd64"
      sha256 "fda8bc8408217d4ea0f4b7dff07d5656bbfef9053ac25890d58907095facf75e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.2/cloudtaser-cli-linux-arm64"
      sha256 "377ffc501555cc6a451b7dc3fc6edd2b6eb90d9bd855217597a7618ecea4f3e2"
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
