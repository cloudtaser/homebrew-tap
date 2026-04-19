class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.4"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.4/cloudtaser-cli-darwin-amd64"
      sha256 "76187117e39ba5590757aa55e22c3da6d0e94293dae8e0714f85da6ee4437308"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.4/cloudtaser-cli-darwin-arm64"
      sha256 "d7e7d1356c73aeba1d4a0a689fdc0e6938f1e84897316ea5df1e393ceb1d6409"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.4/cloudtaser-cli-linux-amd64"
      sha256 "ad63611bb0e46783755005d0651e050834c95f52f036279c71fe33afaf9ddadf"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.4/cloudtaser-cli-linux-arm64"
      sha256 "5da32d94fb4781b69bd1e436c9bcb38310eeb69c53dbbda96a4fdc81764a0e41"
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
