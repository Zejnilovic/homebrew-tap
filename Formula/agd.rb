class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.1.0/agd-0.1.0.tar.gz"
  sha256 "c7d8a0a7c6c7feed548f130c12309f22c569c8579d010e8fa90c9f09dc1e078a"
  license "MIT"

  def install
    bin.install "bin/agd"
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
