class AwsCliOidc < Formula
  desc "Automatically start your go.mod Github dependencies to build aws-cli-oidc"
  homepage "https://github.com/parkside-securities/aws-cli-oidc"
  url "https://github.com/parkside-securities/aws-cli-oidc/archive/refs/tags/0.1.1.tar.gz"
  sha256 "0797b255a6e3d54ec89dbb41b541fcb523f005dcf4bee543d4452689bfe6c074"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/aws-cli-oidc"
    bin.install "bin/aws-sign-in"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/aws-cli-oidc")
  end
end
