class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.6.0/lask-v0.6.0-macos-arm64.tar.gz"
      sha256 "b1d84e02380f2c04429b660b728f1db1011d83e3b649488946909e2728d908d7"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.6.0/lask-v0.6.0-macos-amd64.tar.gz"
      sha256 "a13662aaf21fec580369fdd7c258b376f9c5327f9eeca7e49941dcac6b291d04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.6.0/lask-v0.6.0-linux-amd64.tar.gz"
      sha256 "eb2897bd7b94b7dee4af5105f06da0f97141264d8d3699ccfd33ef98c1456101"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
