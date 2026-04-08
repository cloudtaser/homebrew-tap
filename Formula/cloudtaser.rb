class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.0/cloudtaser-cli-darwin-amd64"
      sha256 "b9d8cbd4596957282488452281b65ea8e9fd252af5da60f57ad0d7342c1a4fdb"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.0/cloudtaser-cli-darwin-arm64"
      sha256 "4ec7bfecbd1efdffc38cb48415a0479e254a2dd0e01c89d9cc03f754029394e6"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.0/cloudtaser-cli-linux-amd64"
      sha256 "e422c2beae859c6c9537df52ea0d418f9c52dff4521cd99712be585f8468f1d0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.0/cloudtaser-cli-linux-arm64"
      sha256 "0912e69ee3fb57aaf96440b46d3cce8f1a454f550e91c1752caa327180937d0a"
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
