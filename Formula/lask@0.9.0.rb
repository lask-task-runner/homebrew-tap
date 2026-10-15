class LaskAT090 < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.9.0/lask-v0.9.0-macos-arm64.tar.gz"
      sha256 "b71b0d1f9813ce878c3b6a40c5c8422dbb5bb82d90e4e677e2607776c9217260"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.9.0/lask-v0.9.0-macos-amd64.tar.gz"
      sha256 "4b124a2d292aeb583016c95e78c9886f874a6305ea2709ed51dc21df70dc1e08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.9.0/lask-v0.9.0-linux-amd64.tar.gz"
      sha256 "49343a2d07e2e035e0e478d1fe8770fdd1569657f272bc1644764506eec0037a"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
