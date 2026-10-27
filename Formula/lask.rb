class Lask < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.13.0/lask-v0.13.0-macos-arm64.tar.gz"
      sha256 "3dd9f1d09d2ebce65f04fdbed8049eb37d6c808c3a2ccef7268544a0a948fe19"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.13.0/lask-v0.13.0-macos-amd64.tar.gz"
      sha256 "e157c57e2c301f314a292c87a92cf963eee09128f6c5b639fd1507a3020d4b9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.13.0/lask-v0.13.0-linux-amd64.tar.gz"
      sha256 "925ebe12ab34d7f83a85bf62070c75635e953f4889acbb9cef7610d7d69439db"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
