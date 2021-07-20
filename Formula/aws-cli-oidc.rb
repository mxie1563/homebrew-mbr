class AwsCliOidc < Formula
  desc "Automatically start your go.mod Github dependencies to build aws-cli-oidc"
  homepage "https://github.com/parkside-securities/aws-cli-oidc"
  url "https://github.com/parkside-securities/aws-cli-oidc/archive/refs/tags/0.2.0.tar.gz"
  sha256 "204c24997c9f0271bf38e1826caa1e3bc7bc7fd0f92e3ca7af0b749e44cc9a68"
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
