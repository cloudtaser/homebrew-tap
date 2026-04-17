class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.3/cloudtaser-cli-darwin-amd64"
      sha256 "266d0878c0aaf6511153a6443fbaf55ebed103f1fd1b3d95449dda625190bb37"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.3/cloudtaser-cli-darwin-arm64"
      sha256 "34335d9c42ad456592cbae4a4aa6d232f033fe2a8958fb684d9028fdf1c76a35"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.3/cloudtaser-cli-linux-amd64"
      sha256 "252e5abddd89e7f2426d3005def3142f7df34e928578f1a50047c6e732403d95"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.3/cloudtaser-cli-linux-arm64"
      sha256 "d7b0873fa3165b7554b5a63a6bf5e5e4d879130ab56217e3f26bd4f3611e0770"
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
