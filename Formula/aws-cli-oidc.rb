class AwsCliOidc < Formula
  desc "Automatically start your go.mod Github dependencies to build aws-cli-oidc"
  homepage "https://github.com/parkside-securities/aws-cli-oidc"
  url "https://github.com/parkside-securities/aws-cli-oidc/archive/refs/tags/0.2.1.tar.gz"
  sha256 "58ffacb9fd69d7d6b25d668be15014b3b73514268f6dac1b8d0de340c1045f0b"
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
