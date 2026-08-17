class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://embrasure.ai"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.1/embrasure-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "b15d7b6812c7eb6f83a676e0199c0974698691dd6952c43079e999aca1b4b42d"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.1/embrasure-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "c747a97b7b886d2e326cecc43cf553e2c9d655349f4473410205102db6921a90"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.1/embrasure-0.5.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34ba45bd7a86afb76b9a532879ef9538707af0faafb644645180c014921bdec3"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.1/embrasure-0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f288710f743ea541dc87417af8d444025829854b0f52c44361458d771361a89"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
