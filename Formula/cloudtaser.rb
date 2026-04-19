class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.1"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.1/cloudtaser-cli-darwin-amd64"
      sha256 "ac460a9eed5b576926d53ea2dd7286a073a5457ccfe0e164cfca8519ee7a93ea"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.1/cloudtaser-cli-darwin-arm64"
      sha256 "80f9754401913486624e062a01bd21bbb8d3ed69e50b4c2f5a2bf413a1f17839"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.1/cloudtaser-cli-linux-amd64"
      sha256 "5722b18ccdc0f4ff3f5404758c05db8bb695d09eac00eb47746b504c1d35a9be"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.1/cloudtaser-cli-linux-arm64"
      sha256 "5b26be7225aefd31003bcbf996f46be8864e3c220d6699e60ee3fcf7b470ad95"
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
