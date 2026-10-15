class Lask < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.10.0/lask-v0.10.0-macos-arm64.tar.gz"
      sha256 "3385b1ca47a29d5abb9e46aa6666e48dd2357a1d291548f441efae5596a34277"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.10.0/lask-v0.10.0-macos-amd64.tar.gz"
      sha256 "7814972ca27e83a17e6da1ecfa25e62586da23c4bcf21948669d25957c4373fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.10.0/lask-v0.10.0-linux-amd64.tar.gz"
      sha256 "19d5ff6d1671b3db324b70b5b940abcdf08206642bfa2d17b3849a0b2fd0fd9c"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
