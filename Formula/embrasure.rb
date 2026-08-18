class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://github.com/EmbrasureAI/embrasure-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.2/embrasure-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "d9cb4a2420b64e9a43ea41018a847bc84e5ad3149db806a21598546bb70f14f5"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.2/embrasure-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "7013c7a76fb56efd3ef2e6e2b3eb77eb9d4a65bc73bd716104c7c721f08798fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.2/embrasure-0.5.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2b4eb2a2525cfaf5aaed06277c9ce544e51be4e921216eb61d1cba4aa65f0b42"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.2/embrasure-0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d8c4243dad082ea5d46b37913c29c92a16b76dcba549ba80e4181a370c285a8"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
