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
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test aws-cli-oidc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
