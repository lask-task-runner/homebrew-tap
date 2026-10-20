class LaskAT0110 < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.11.0/lask-v0.11.0-macos-arm64.tar.gz"
      sha256 "3f6b2b52fcd6b8387ba12826341175d650d75eaca8ec2db7f59c5b3d87ced08d"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.11.0/lask-v0.11.0-macos-amd64.tar.gz"
      sha256 "9111d2dbd7a3348a1cf3e03d5e37f9c54bad85c9ffd097fa7b4da2638f8e8384"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.11.0/lask-v0.11.0-linux-amd64.tar.gz"
      sha256 "cceaa7da01214b3531d6767dc478e8c10d0b8171313281b2a73a307f19ccd7f6"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
