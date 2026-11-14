class Lask < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.17.0/lask-v0.17.0-macos-arm64.tar.gz"
      sha256 "57af6e48365384c0c4472b7fa3b757847b9594760dec3e5de55e1ca3a306f4e6"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.17.0/lask-v0.17.0-macos-amd64.tar.gz"
      sha256 "5c4501663915e6bb7d0f80b313a49e4613bcb3333e81c39e52adb654ffe6ad02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.17.0/lask-v0.17.0-linux-amd64.tar.gz"
      sha256 "131af067d1d0c0eb72c086dbea8599fd5b82f84d54a4a26a2e0e2dc086f67497"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
