class LaskAT0150 < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.15.0/lask-v0.15.0-macos-arm64.tar.gz"
      sha256 "ea1b5ed4282d389a563fcba7c5afd69501ca727190a0457f1b29e21b1d146f27"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.15.0/lask-v0.15.0-macos-amd64.tar.gz"
      sha256 "7f14fd81dc421d067aa6acda42c4d6660f8891b67b5887a24ae7c85f7298fa80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.15.0/lask-v0.15.0-linux-amd64.tar.gz"
      sha256 "6ba0a2a1b6645b41f088eebf3a66fa783bde8b28cc5656250d482a111bfd129e"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
