class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.16.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.7/cloudtaser-cli-darwin-amd64"
      sha256 "dd9ab179b0a95480148e9b58c3e8763aadc62b3e039259a47199c41687ee37cd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.7/cloudtaser-cli-darwin-arm64"
      sha256 "9336d1bc17451708e000ba747308ed189af34c46b2f18abd40ab7479651e96a5"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.16.7/cloudtaser-cli-linux-amd64"
      sha256 "ca788b6d00204f5383e3bce88a7109be6219da95c47070f77becfc54433021dd"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.16.7/cloudtaser-cli-linux-arm64"
      sha256 "d3d5160f4c58383783f6c2ed0d15dcde84023f581f155c8602fcac12fe64f4e9"
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
