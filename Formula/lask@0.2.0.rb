class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.2.0/lask-v0.2.0-macos-arm64.tar.gz"
      sha256 "d6add52310d2e1f650404dd0e74ef8eb08fc88958fe386a82e92fc056fc27f28"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.2.0/lask-v0.2.0-macos-amd64.tar.gz"
      sha256 "c78ac17923a785feb4dd6049021f2527cf5d782891a4b5a79d10edcf0665facb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.2.0/lask-v0.2.0-linux-amd64.tar.gz"
      sha256 "cda877865a430713f93fc6b5c577051e97a7f7891bb66d0be41e50b317c7800a"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
