class Cks < Formula
  desc "Force-quit every running GUI application (Captain Kill Switch)"
  homepage "https://captainkillswitch.com"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://captainkillswitch.github.io/downloads/cli/cks-macos"
    sha256 "b7909ea0cd71f3b1df66f41d6a90c6cd4e031ff29d5dbf5d18bb0db038d4ebf3"

    def install
      bin.install "cks-macos" => "cks"
    end
  end

  on_linux do
    url "https://captainkillswitch.github.io/downloads/cli/cks-linux"
    sha256 "537bedb99fab553aa3f475d8c4c61f0b8064b82d3089d111c94d403f8719cf50"

    def install
      bin.install "cks-linux" => "cks"
    end
  end

  test do
    assert_match "cks", shell_output("#{bin}/cks --help")
  end
end
