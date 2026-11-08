class LaskAT0160 < Formula
  desc "Task runner with a typed language and pinned container environments"
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.16.0/lask-v0.16.0-macos-arm64.tar.gz"
      sha256 "9cb1eb50c1bfae2596d58d743bba80e7e8e71cc3c0c08d12c471e4cf88a54c43"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.16.0/lask-v0.16.0-macos-amd64.tar.gz"
      sha256 "98413c45b87facbc64d72fa194e9a7aaf4fae064e490665a51da0ed55fcd5a2e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.16.0/lask-v0.16.0-linux-amd64.tar.gz"
      sha256 "6999ddf8d45d74aa7f597b954aaf8c5fa26fa1d70c92dabc3d10ca7632557fcd"
    end
  end

  def install
    bin.install "lask"
  end

  test do
    system "#{bin}/lask", "--help"
  end
end
