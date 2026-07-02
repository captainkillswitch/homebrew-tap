class Cks < Formula
  desc "Force-quit every running GUI application (Captain Kill Switch)"
  homepage "https://captainkillswitch.com"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://captainkillswitch.github.io/downloads/cli/cks-macos"
    sha256 "1c161337ff8856c28c28b80890ba0a8b8f0b74b9abad232a5b6a38aa69fd5fce"

    def install
      bin.install "cks-macos" => "cks"
    end
  end

  on_linux do
    url "https://captainkillswitch.github.io/downloads/cli/cks-linux"
    sha256 "80f6b59c8b19e5746fb2968197d72e03e0163aff48deb85e9347b1be7bd09c43"

    def install
      bin.install "cks-linux" => "cks"
    end
  end

  test do
    assert_match "cks", shell_output("#{bin}/cks --help")
  end
end
