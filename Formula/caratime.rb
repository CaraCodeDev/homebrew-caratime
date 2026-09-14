# Homebrew formula for caratime. The source of truth lives here; `release.sh`
# rewrites the url, sha256 and version, and the same file is copied into the
# public tap repo (CaraCodeDev/homebrew-caratime), which does not exist yet.
#
# The bottle is a single compiled binary (`bun build --compile`), so there is
# nothing to build on the user's machine and no runtime to install.
class Caratime < Formula
  desc "Time tracking from what your agents and git actually did"
  homepage "https://github.com/CaraCodeDev/caratime-app"
  url "https://github.com/CaraCodeDev/homebrew-caratime/releases/download/v0.2.0/caratime-0.2.0-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "caratime"
  end

  def caveats
    <<~EOS
      Sign in with a device key from the caraTime settings page, then start the
      background agent:

        caratime auth
        caratime start

      After a `brew upgrade`, run `caratime restart` so the agent takes the new
      binary.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/caratime --version")
  end
end
