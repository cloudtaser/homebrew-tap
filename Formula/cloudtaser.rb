class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.3.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v#{version}/cloudtaser-cli-darwin-amd64"
      sha256 "31b1655a17e74c85c64ede602115b325a5bca2d9de6cbac6ea99586a13bf05e4"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v#{version}/cloudtaser-cli-darwin-arm64"
      sha256 "70a4623d1c45f94b2ce05116fb62ae7f0b3192a581bd2f9ad5848f3cae8279ea"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v#{version}/cloudtaser-cli-linux-amd64"
      sha256 "0d5bd16a09cc8dd14f10822cb656d41f0f6a371b36de5c50f57a2ffbf7f8b393"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v#{version}/cloudtaser-cli-linux-arm64"
      sha256 "2fd3334b12ebf0491be28ca60f18243164babdf196dc2f07e07d95a918a32131"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "cloudtaser"
  end

  test do
    system bin/"cloudtaser", "version"
  end
end
