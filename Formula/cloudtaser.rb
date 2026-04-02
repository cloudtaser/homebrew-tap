class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.9.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.3/cloudtaser-cli-darwin-amd64"
      sha256 "832fcc80d8d58307a6a18929bb33ef9aa74bb92c4cf55b56efd44528c2c78a60"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.3/cloudtaser-cli-darwin-arm64"
      sha256 "decd17524d016e3423ae7c7e5983372fd7c5a2cc9b3f4dc75479d16db0b97182"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.3/cloudtaser-cli-linux-amd64"
      sha256 "96f2a093d35f8d0f52211583cbf2e974a5abeb6e73ffb99eebcf8e6a5ac97ba4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.3/cloudtaser-cli-linux-arm64"
      sha256 "c5e095db49f470eee3da3fcb2e060235164738efb73a11ccc9153d41f70a1510"
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
