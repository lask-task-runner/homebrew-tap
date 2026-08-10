class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.1.0/lask-v0.1.0-macos-arm64.tar.gz"
      sha256 "4316a33812c9d3dc185c669d119e143bc108ae1a3356b7dd9a0d648057d5fcb5"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.1.0/lask-v0.1.0-macos-amd64.tar.gz"
      sha256 "8346d617721dd3b04b26813dab5c8f98b9f2f15d2a03e999250cbf704cd34e24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.1.0/lask-v0.1.0-linux-amd64.tar.gz"
      sha256 "c8094bc7eacd4691dd00b1218bbc11107bde5f33a6d3a37c9c43372f47c0bed3"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
