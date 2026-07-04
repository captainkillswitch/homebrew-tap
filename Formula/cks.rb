class Cks < Formula
  desc "Force-quit every running GUI application (Captain Kill Switch)"
  homepage "https://captainkillswitch.com"
  version "0.1.4"
  license "MIT"

  on_macos do
    url "https://captainkillswitch.github.io/downloads/cli/cks-macos"
    sha256 "5789a92e3ebd4c659152e0959cd37068fcafae92388d6bf2f2934c416ccc84b2"

    def install
      bin.install "cks-macos" => "cks"
    end
  end

  on_linux do
    url "https://captainkillswitch.github.io/downloads/cli/cks-linux"
    sha256 "26751385d708556f59b222e7c3d9fde0eadae2047b1e4fa8d2d8815c7924f673"

    def install
      bin.install "cks-linux" => "cks"
    end
  end

  test do
    assert_match "cks", shell_output("#{bin}/cks --help")
  end
end
