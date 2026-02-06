class Linctl < Formula
  desc "Comprehensive command-line interface for Linear's API"
  homepage "https://github.com/hasdfa/linctl"
  url "https://github.com/hasdfa/linctl/archive/refs/tags/v0.2.4.zip"
  sha256 "59902147b4776c4523cc5720e4e6a1d4d6f79f28141c5ef14bcae2f5edad8a63"
  license "MIT"
  head "https://github.com/hasdfa/linctl.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/hasdfa/linctl/cmd.version=#{version}")
  end

  test do
    # Test version output
    assert_match "linctl version #{version}", shell_output("#{bin}/linctl --version")
    
    # Test help command
    assert_match "A comprehensive CLI tool for Linear", shell_output("#{bin}/linctl --help")
  end
end
