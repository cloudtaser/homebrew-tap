class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.2/cloudtaser-cli-darwin-amd64"
      sha256 "6347b8e210279eea97c85f5bfe619fc6d6d04047649a71c6d4e8f10cf38353d3"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.2/cloudtaser-cli-darwin-arm64"
      sha256 "d1133002122bdae25253702bc4b5e8e8f33882ff89b3868b24f70f3c0f753948"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.2/cloudtaser-cli-linux-amd64"
      sha256 "2c9dc2adacd6b8e4b30f58f2e42b8a3b91bc03740e58da6c14d96270309a0664"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.2/cloudtaser-cli-linux-arm64"
      sha256 "06347a5e977671a3d92a613c1b2c3d729f34a8a91b4e3cd26be60d0f5e5618f3"
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
