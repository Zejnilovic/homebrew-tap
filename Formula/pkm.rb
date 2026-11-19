# Homebrew formula for pkm, in Zejnilovic/homebrew-tap. The Release workflow fills the url and the sha256 with
# scripts/formula.sh from the tarball that make dist built, and pushes it to the tap. Here the sha256 stays a placeholder.
class Pkm < Formula
  desc "Command-line tool for Markdown vaults: day pages, tasks, links and the close"
  homepage "https://zejnilovic.github.io/scripts-pkms/"
  url "https://github.com/Zejnilovic/scripts-pkms/releases/download/v0.2.1/pkm-0.2.1.tar.gz"
  sha256 "f1f97eaa934b85acce72ebb8e652df9a3d37f82d158a390f79e25f63cfd824a9"
  license "MIT"

  depends_on "jq"
  depends_on "ripgrep"

  def install
    libexec.install "bin", "lib", "share", "VERSION"
    bin.install_symlink libexec/"bin/pkm"
    generate_completions_from_executable(bin/"pkm", "completion", shells: [:bash, :zsh])
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pkm version")
    assert_match "complete -F _pkm pkm", shell_output("#{bin}/pkm completion bash")
    assert_match "day", shell_output("#{bin}/pkm __complete d")
  end
end
