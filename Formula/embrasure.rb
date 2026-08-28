class Embrasure < Formula
  desc "Validate dbt changes against production Snowflake data"
  homepage "https://github.com/EmbrasureAI/embrasure-cli"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.4/embrasure-0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "694a2f7c78c5f0c840bfa873fc7b29b3116b6a5e7eb52c26e0a6973480276464"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.4/embrasure-0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "3d24837153d174f47e0be05a5f879ab19db3d84eecaaadee2a927f8eb6459c20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.4/embrasure-0.5.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c72ccb876a9c36f3b7a33a77b79ab3cffd499b5f9db6e4d8169183909424a298"
    end
    on_intel do
      url "https://github.com/EmbrasureAI/embrasure-cli/releases/download/v0.5.4/embrasure-0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "308480ef1c7e2c6c68a1c42664da6e0f30a41ea0c3c4da195f6ea135f03882c1"
    end
  end

  def install
    bin.install "embrasure"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/embrasure --version")
  end
end
