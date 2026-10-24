class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.1.1/agd-0.1.1.tar.gz"
  sha256 "b93bb70fec1b6ee99ee0d98229e6b27013642ac511f5afc540b10619f776f2e8"
  license "MIT"

  def install
    bin.install "bin/agd"
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
