class Linctl < Formula
  desc "Comprehensive command-line interface for Linear's API"
  homepage "https://github.com/hasdfa/linctl"
  url "https://github.com/hasdfa/linctl/archive/refs/tags/v0.2.2.zip"
  sha256 "72f268b7db392e2c990fce3b50c9aa1684eebce38123c7bbd27252eb5661ce2a"
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
