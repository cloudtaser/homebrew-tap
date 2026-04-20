class Cloudtaser < Formula
  desc "CLI tool for deploying CloudTaser operator and checking workload compatibility"
  homepage "https://cloudtaser.io"
  version "0.17.7"
  license "Proprietary"

  on_macos do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.7/cloudtaser-cli-darwin-amd64"
      sha256 "d20840f1bae0df289424c3cb52ef79807973c987fce2c81a99b406ca80a8bba1"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.7/cloudtaser-cli-darwin-arm64"
      sha256 "421cb80811e077e87ed37bf6227fea3c9d6bd46d921b7dd7beec87c71dbbd655"
    end
  end

  on_linux do
    on_intel do
      url "https://releases.cloudtaser.io/cli/v0.17.7/cloudtaser-cli-linux-amd64"
      sha256 "937c0382812176a50329eefd33dae96aa07d3eb42f3e7854724ad793503c99d0"
    end
    on_arm do
      url "https://releases.cloudtaser.io/cli/v0.17.7/cloudtaser-cli-linux-arm64"
      sha256 "87ba1dbcb61ec5cd5e0b4aba0f93852da260fe514e463d47b5b467745c8419d6"
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
