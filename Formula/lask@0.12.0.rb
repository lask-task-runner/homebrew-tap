class LaskAT0120 < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.12.0/lask-v0.12.0-macos-arm64.tar.gz"
      sha256 "454a4d81051013a797ce08efcda8fcab98621f2c8148737c12c0634fe88b6543"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.12.0/lask-v0.12.0-macos-amd64.tar.gz"
      sha256 "5fe723aeec235e807f78803409c74d6d68169b4de43a01dc649500e55e910a4b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.12.0/lask-v0.12.0-linux-amd64.tar.gz"
      sha256 "596910fb41b4645de88141f7dc9157623e67d9b3c20d3c315abee9e1fdc0f64b"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
