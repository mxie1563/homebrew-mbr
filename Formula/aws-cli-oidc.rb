class AwsCliOidc < Formula
  desc "Automatically start your go.mod Github dependencies"
  homepage "https://github.com/parkside-securities/aws-cli-oidc"
  url "https://github.com/parkside-securities/aws-cli-oidc/archive/refs/tags/0.1.0.tar.gz"
  sha256 "52fa04f7da6d2e6723ea2be8de1bbf7d1744012039cc8de1982bbc49c71b9fb3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "false"
  end
end
