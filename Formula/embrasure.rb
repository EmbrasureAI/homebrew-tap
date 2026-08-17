class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://embrasure.ai"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.4.0/embrasure-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1f2e538272d27914a72f450d40a02771acff8510c000f3f3a8011fa97cc1bdfc"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.4.0/embrasure-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "174bd4128bbf0d94d0fb1800f82f03f1a0b15791afb7044cb500c5d8c1c38bf6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.4.0/embrasure-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f627b86ceb4609632abaabefe98e705ffac4090bd10724f758b76d669cdcad2b"
    else
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.4.0/embrasure-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d9e5e4a8d73634a1d1c9bb27f9f0ddd01e5d1d571a25c894f29391fa8440226"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
