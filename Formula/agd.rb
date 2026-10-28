class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.4.0/agd-0.4.0.tar.gz"
  sha256 "be90b5febf276a0560def639d78797c0cfd08d24d1f13e4b613023d6a3382689"
  license "MIT"

  def install
    bin.install "bin/agd"
    generate_completions_from_executable(bin/"agd", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
