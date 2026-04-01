class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.9.2"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.2/cloudtaser-cli-darwin-amd64"
      sha256 "16887c3aa3ef5fb726a9fe1fa554747f882f8f3146151cfd133257c636ecb238"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.2/cloudtaser-cli-darwin-arm64"
      sha256 "ed46613efd5a5bc571fa20cb0b5cf3f1d013445970e537d1e6a3ed8660b1f0ff"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.9.2/cloudtaser-cli-linux-amd64"
      sha256 "95e7d2e8a2bd8cc2eaf5ed57b591a4f4115cb05caaedb412d42c3f9fe4f08ee8"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.9.2/cloudtaser-cli-linux-arm64"
      sha256 "43b8b23f70f5ec5ef3f0423838b3ada718ea4e2e1f0570e498a58061d5f15884"
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
