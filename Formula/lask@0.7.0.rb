class LaskAT070 < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  keg_only :versioned_formula

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.7.0/lask-v0.7.0-macos-arm64.tar.gz"
      sha256 "cb6054c04ac368507f566b426db483465e2c7d95ef15e1ee4f6085f6d4b1aa4d"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.7.0/lask-v0.7.0-macos-amd64.tar.gz"
      sha256 "39dcd949a16973f9259c276f5892f9b9b8dbbdd8f0b79efd9de52a7557096433"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.7.0/lask-v0.7.0-linux-amd64.tar.gz"
      sha256 "da8faa6f0049c55d4b548a7217b2e55410e7512433bf3eec9170e54b07be6d09"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
