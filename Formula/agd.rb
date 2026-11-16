class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.5.2/agd-0.5.2.tar.gz"
  sha256 "f8c69e45a2b4db1aa7cd3deedbcbd2e81e1e9eec24a5888e60cfe11eaef50d7d"
  license "MIT"

  def install
    bin.install "bin/agd"
    generate_completions_from_executable(bin/"agd", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
