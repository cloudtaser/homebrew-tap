class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.4.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.3/cloudtaser-cli-darwin-amd64"
      sha256 "2a7a39fee32be62e4bd79fb9e13589b5c761b65dcbef54f99715c19dc8972d05"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.3/cloudtaser-cli-darwin-arm64"
      sha256 "180ed7b57f7cc7d3d8c311fa7de6eb1f026c156448ab769ab956a46e4a33987a"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.3/cloudtaser-cli-linux-amd64"
      sha256 "0e53333209967c666838a8cbc2e73f38e4f7b140ea47b616212b1bbb54fc5357"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.3/cloudtaser-cli-linux-arm64"
      sha256 "c85b8a190a8ddaac13b91f5617692753af6533de219991095bc4b95805a717b4"
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
