class Lask < Formula
  desc "Lask is a task runner based on functional programming."
  homepage "https://github.com/lask-task-runner/lask"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lask-task-runner/lask/releases/download/v0.0.2/lask-v0.0.2-macos-arm64.tar.gz"
      sha256 "7229015fb6b2ee90de88ade98ac579a92fda8b53805e5f15a705fe6b2f8ff987"
    end
  end


  def install
    bin.install "lask"
  end


  test do
    system "#{bin}/lask", "--help"
  end
end