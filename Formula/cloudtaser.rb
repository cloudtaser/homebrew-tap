class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.0"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.0/cloudtaser-cli-darwin-amd64"
      sha256 "e4d4001c511b2fec5dbde15ea82742457ff3eaed4b86b9f3d59c0a6543be1677"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.0/cloudtaser-cli-darwin-arm64"
      sha256 "7e0568f0506d779aa22b30cfe777574757c4a02590f479b5f0a6065088721718"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.0/cloudtaser-cli-linux-amd64"
      sha256 "d687df71a4b856901fabd9bf9f6426c559a2ac4b681b69bd2dc04504c022f21a"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.0/cloudtaser-cli-linux-arm64"
      sha256 "54291535cde984dd48cc06342b0a0261db290f176b514a3db18c00cd6d716abc"
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
