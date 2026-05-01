class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.16"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.16/cloudtaser-cli-darwin-amd64"
      sha256 "3098ecc92fe6338c33664d61a9b7631e09f13e91da1705ab964fdbdbc6452654"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.16/cloudtaser-cli-darwin-arm64"
      sha256 "c89e4c911f87f28796d9ab1ee9e32ac5d39affa6378e52c202ed73ea95d4f4b0"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.16/cloudtaser-cli-linux-amd64"
      sha256 "968d0068f26c71e5f17b6f0c0a9a238ddfcbfd3872c46303b37b986fe22c8444"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.16/cloudtaser-cli-linux-arm64"
      sha256 "a2ed5a757453bbf72e22362bfa8c2938906745fedd36575b5ef64a7a9bda3a4b"
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
