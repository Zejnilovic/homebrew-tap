# Homebrew formula for pkm, in Zejnilovic/homebrew-tap. The Release workflow fills the url and the sha256 with
# scripts/formula.sh from the tarball that make dist built, and pushes it to the tap. Here the sha256 stays a
# placeholder. brew audit allows lines of 118 characters at most.
class Pkm < Formula
  desc "Command-line tool for Markdown vaults: day pages, tasks, links and the close"
  homepage "https://zejnilovic.github.io/scripts-pkms/"
  url "https://github.com/Zejnilovic/scripts-pkms/releases/download/v0.5.0/pkm-0.5.0.tar.gz"
  sha256 "cc08fb3005f9313f4b89e56591404f434e3dcae5b8c930eb189bba75f872ce1c"
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
