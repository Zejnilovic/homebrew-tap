class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.5.1/agd-0.5.1.tar.gz"
  sha256 "cae6bebcbf1e72792bfc0428ed75f691d7073258c11240e13f3eb09bba33cc76"
  license "MIT"

  def install
    bin.install "bin/agd"
    generate_completions_from_executable(bin/"agd", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
