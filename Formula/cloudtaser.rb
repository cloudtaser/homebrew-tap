class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.6.3"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.3/cloudtaser-cli-darwin-amd64"
      sha256 "a12ef4caddff69452593863ba4d712a6f0517afd693c3a67614169be98267801"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.3/cloudtaser-cli-darwin-arm64"
      sha256 "bf9ccf7320d8e4b18fbd9687f2715f7c4eff9b238c26e0207fbc58888b380c85"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.6.3/cloudtaser-cli-linux-amd64"
      sha256 "350c5bf894f98f4c9b245356497f7cfb83eb18b189e1faaa42edde59b531768b"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.6.3/cloudtaser-cli-linux-arm64"
      sha256 "31eb1e54d56e653637fea64a734a2981cba601f42574de1aedd5d17e940c7898"
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
