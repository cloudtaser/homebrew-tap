class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.26"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.26/cloudtaser-cli-darwin-amd64"
      sha256 "8828a6a40aba0b7a035a0cb4c56424dba1cdbed00aa038cdada2552a04d2b02e"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.26/cloudtaser-cli-darwin-arm64"
      sha256 "cae9323e2e1bcb3f21979f509fcb0df487e54d38545af454443162ada7d27036"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.26/cloudtaser-cli-linux-amd64"
      sha256 "bdcbcb274491ea5b93109b08b9d727c76e3b67b9abd86254a2ff01f171055ad6"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.26/cloudtaser-cli-linux-arm64"
      sha256 "621e8d7a1035127abd169186c7874b7bd2ebe6b437dae7f648529bd43171790c"
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
