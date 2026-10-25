class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.2.0/agd-0.2.0.tar.gz"
  sha256 "eb44081e62fc273d68449c14559b9250e415f84e6e082fb022d6716f3ca99bbf"
  license "MIT"

  def install
    bin.install "bin/agd"
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
