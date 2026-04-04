class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.10.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-amd64"
      sha256 "c66c872e199df6bc09996e11afa61f7c3d6f24646b12f23dfb3f58f1cc5d0f0b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-darwin-arm64"
      sha256 "c9c1be9d8f849f19370356d39b2069b369a74d525367c8887d33602fd27fe159"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-amd64"
      sha256 "787978d116411f2b46ee0dba1527c7bbacbbfe928ba6cb61d543a2f90d15b1d9"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.10.0/cloudtaser-cli-linux-arm64"
      sha256 "3b29c28f9652dd5913bbd94c9120f00cea38db9e8308273f158140196028cae5"
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
