class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://embrasure.ai"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.0/embrasure-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "8b6af8a678a68878449cd94d04c13d6320f03ed0983ae25695ed57db19bf0ebc"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.0/embrasure-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "4dd84794b0ab2b5f888f6e25662ae3f0839e0da319f650fe3932e685ae184024"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.0/embrasure-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52daa46164d004f0e1e34d7ae3d9c9e838fb73cdd3d9f9fef494437b6624834f"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.0/embrasure-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9229156be5d125e9923d6ede1da200445902873fe80a4ff4d2aed91aa2314f37"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
