class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.19"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.19/cloudtaser-cli-darwin-amd64"
      sha256 "e9cd6c55f667076b6dadcce6c3f95ede036379cd62350181a14f201913d62d44"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.19/cloudtaser-cli-darwin-arm64"
      sha256 "12681e7321b0230959b0d807d8a7ebc995a063e9dcbb6a454840de2b78eb1f34"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.19/cloudtaser-cli-linux-amd64"
      sha256 "5e4c85df19d6cfb238362c7e3fdade39efe34b4b0654f91dfbe03b5aaa9ce37d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.19/cloudtaser-cli-linux-arm64"
      sha256 "4f1c5c9314014b26bbbe55daaed4983f2ae32b4f1600ffeeaa2c1584d1ae879f"
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
