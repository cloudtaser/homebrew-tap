class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.13"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.13/cloudtaser-cli-darwin-amd64"
      sha256 "c95d202c53b3ae5bf866daed6b3b3bca546dd9860f170892d6ef85c7d12a1791"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.13/cloudtaser-cli-darwin-arm64"
      sha256 "3e6b525e11c8a4230831c2be6836198f3aebb96dee23c187b2531afbebd60412"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.13/cloudtaser-cli-linux-amd64"
      sha256 "d8d93767816e9c1c10f1ec3e913ed2186cc5688cbd9a0bdb2b7cfd4bda288fc8"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.13/cloudtaser-cli-linux-arm64"
      sha256 "3a2231bd8cf1fa8675eee15ffec88b1278ff1de104e74981af8b7983868adb2f"
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
