class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.3.0/lask-v0.3.0-macos-arm64.tar.gz"
      sha256 "7662019be5ea7876fcb431000a7dc76cc995a04541af5f2ced5dc1302b66e4a9"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.3.0/lask-v0.3.0-macos-amd64.tar.gz"
      sha256 "e673375c96476906b02f7933acb156fbb00308d70f94a93983a4315701300c4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.3.0/lask-v0.3.0-linux-amd64.tar.gz"
      sha256 "6f5554ae0a39636773613b1d2504ad9f23a8bbc2841b3dadfe79aeb4330da6f0"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
