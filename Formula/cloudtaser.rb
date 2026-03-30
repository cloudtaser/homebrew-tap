class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.4.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.4/cloudtaser-cli-darwin-amd64"
      sha256 "945b660810352bbea610bdf3e831168b5e330a68bc2af6a3209665e7f7394c1d"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.4/cloudtaser-cli-darwin-arm64"
      sha256 "38bc9ebffc89210f5a951b0ef13a1ec1c436180b1e7ceb7b3ce12d50b7d36f05"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.4.4/cloudtaser-cli-linux-amd64"
      sha256 "30fb5db447ba1f72a046f9c8397473b9253a6077fda0c646a2bcf2969879eac6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.4.4/cloudtaser-cli-linux-arm64"
      sha256 "5e51a40f6e04bc2788a244419b4806a807cb26c981281414a302018ec25b320d"
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
