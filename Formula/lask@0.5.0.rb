class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.5.0/lask-v0.5.0-macos-arm64.tar.gz"
      sha256 "0c12a43f868c9507db016cf3907287bf395ac7e7a18b61788bca08d67769dbf2"
    end
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.5.0/lask-v0.5.0-macos-amd64.tar.gz"
      sha256 "46d019542a1a426aa09ef45e657f4a642d19c283158315a4dc7cad366f842250"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.5.0/lask-v0.5.0-linux-amd64.tar.gz"
      sha256 "8f351c7f124696c2dedbf31d044f889ae28d57bae18fd0ba8029a06c5e56901a"
    end
  end

  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end
