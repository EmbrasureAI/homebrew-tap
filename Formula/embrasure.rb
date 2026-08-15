class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://github.com/EmbrasureAI/embrasure-cli"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.2/embrasure-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "552e7e50d5eee6d218b7eb3b16898b24d190e0dd587bf3acac9564bdb9337742"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.2/embrasure-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "c9aad15544f8c440e5d8c4b6849af468f7510585a23bb9d33093f454cd20ff99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.2/embrasure-0.3.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddf039194128d2a3c6cf03162cadc55af199f30e592471cb0355ffde8728c45b"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.3.2/embrasure-0.3.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0cef37bcfc19cbf3b809ef7d4132963eeb462800b9a17b52044c0e548ad9010"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
