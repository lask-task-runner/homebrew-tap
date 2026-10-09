class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.8.0/lask-v0.8.0-macos-arm64.tar.gz"
      sha256 "940a687f32e2485f15ee72fbec2874063288888633e33f4a12b6acf1b573663c"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.8.0/lask-v0.8.0-macos-amd64.tar.gz"
      sha256 "420232729c4581fb43e4ed0280949d19ba561f8af59a98bac164caeb0a5a9afa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.8.0/lask-v0.8.0-linux-amd64.tar.gz"
      sha256 "f161676c6313882b7aec1ac79ecde31483c8fdda29f0f867f8daef95f157e3f0"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
