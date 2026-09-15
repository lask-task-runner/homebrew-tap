class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.4.0/lask-v0.4.0-macos-arm64.tar.gz"
      sha256 "0e2bb452918dd1b219bd348a3fec5f18304fe5ade1259c6270b0105bc9958e79"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.4.0/lask-v0.4.0-macos-amd64.tar.gz"
      sha256 "30c4845b855e236017ba0a64df6595fd3d991f5a5b95d9956f3bfccf24c51ba3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.4.0/lask-v0.4.0-linux-amd64.tar.gz"
      sha256 "c26b16ced0e63c3de75baaa89b7d2b0bcb1973a62596275604ae7467c9f6a625"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
