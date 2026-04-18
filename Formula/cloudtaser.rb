class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.5"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.5/cloudtaser-cli-darwin-amd64"
      sha256 "0fbd9675dd9d507d2d7427678e201ee292894581ab174db5434830214639f222"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.5/cloudtaser-cli-darwin-arm64"
      sha256 "e4b98fe0aaa6957f7f84df1d91776a654bb66f3b1f7be17db7c568168dfad5bc"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.5/cloudtaser-cli-linux-amd64"
      sha256 "cbdb4c932244e5b62d67bd7629c414f8c8be88bdce0ebc31f341396ebc804e98"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.5/cloudtaser-cli-linux-arm64"
      sha256 "b97ef71acb026affff254e55bb4210b74ecf659e6f5d25bd48fe63cd57fa6b6d"
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
