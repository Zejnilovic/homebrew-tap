class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.1.2/agd-0.1.2.tar.gz"
  sha256 "dd1ec20107c7cf8f46969a2d7364072f4d6510f3cac85c11f1257d14532c1e78"
  license "MIT"

  def install
    bin.install "bin/agd"
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
