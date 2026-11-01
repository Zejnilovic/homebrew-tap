class Agd < Formula
  desc "Install, update and combine agentic setups from git repositories"
  homepage "https://github.com/Zejnilovic/agd"
  url "https://github.com/Zejnilovic/agd/releases/download/v0.5.0/agd-0.5.0.tar.gz"
  sha256 "c5270c94f70cd68429ddb9ba3d8f14b004a8f1cd815d09727c4dd2c7915facc2"
  license "MIT"

  def install
    bin.install "bin/agd"
    generate_completions_from_executable(bin/"agd", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_equal "agd #{version}", shell_output("#{bin}/agd --version").strip
  end
end
