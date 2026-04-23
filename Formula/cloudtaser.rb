class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.9"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.9/cloudtaser-cli-darwin-amd64"
      sha256 "42ce2895810068c2d012a7f6481d1b0f966b21cc33c62d7f97f480713db7200f"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.9/cloudtaser-cli-darwin-arm64"
      sha256 "84156bafa674e0f63af1fda0cff14e5641a525bbea21da4e4a7c03726aa4beea"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.9/cloudtaser-cli-linux-amd64"
      sha256 "9ab17de7653da424fdc31e1c7fe683a0e872064a1176f45b18a602e013e6721c"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.9/cloudtaser-cli-linux-arm64"
      sha256 "11bcd564f8b7884142edfa7ea6ae5858fa0c57da4cf2434553462f2f24e06cb4"
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
