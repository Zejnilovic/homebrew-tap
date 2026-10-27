class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.3.0/agd-0.3.0.tar.gz"
  sha256 "c02648d789484db44fb72cc33b40a19933fa4a11590f98f7b14b43c9ae52c34a"
  license "MIT"

  def install
    bin.install "bin/agd"
    generate_completions_from_executable(bin/"agd", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
