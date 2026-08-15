class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://github.com/EmbrasureAI/embrasure-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.3/embrasure-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "345a84fcaeb65c057f7693e9abff79eb845cb0576fdc742c98a7af0a3d126449"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.3/embrasure-0.3.3-x86_64-apple-darwin.tar.gz"
      sha256 "a5fcb622649f685b4b12dd685cc4644f9ab974e70716b6baa6a56da26f41dc55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.3/embrasure-0.3.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "29aedf2904219e31446773e9473834bc642c5dcbdb92232d046fd8e61b7b13bb"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.3/embrasure-0.3.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b445bbc66b99b70fd5a07092ee7bb728262a7279d11b9cab0cb2ab5208af2bd"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
