class Lask < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.14.0/lask-v0.14.0-macos-arm64.tar.gz"
      sha256 "2fdbd76df26dae34cb21c04b53f980f65d962127396f8ad2600f4971b73dd2ec"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.14.0/lask-v0.14.0-macos-amd64.tar.gz"
      sha256 "e9ebbf0d6ebf3b6183f7439afb0a5e802fa75daa1a749b5c3df5a09853b420d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.14.0/lask-v0.14.0-linux-amd64.tar.gz"
      sha256 "17ef059ae8a39e7e35e7fb89eb892e6e7e3c5f38a39b7fbf3ea4b1453d90ee16"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
