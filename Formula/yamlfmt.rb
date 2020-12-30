# This file was generated by GoReleaser. DO NOT EDIT.
class Yamlfmt < Formula
  desc "based on gofmt, yamlfmt formats yaml files into a canonical format"
  homepage "https://github.com/stuart-warren/yamlfmt"
  version "0.1.2"
  license "BSD-3-clause"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/stuart-warren/yamlfmt/releases/download/v0.1.2/yamlfmt_0.1.2_Darwin_x86_64.tar.gz"
    sha256 "b278026f6f98ffc66bd14be5b0146f69188d4083ed1667cc9ca38b90f5ccb6c9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuart-warren/yamlfmt/releases/download/v0.1.2/yamlfmt_0.1.2_Linux_x86_64.tar.gz"
    sha256 "99d81e483d9d7f96316bebbe618eed9e399f83b24bf38639edb7f899d4630a9d"
  end

  depends_on "go"

  def install
    bin.install "yamlfmt"
  end

  test do
    system "#{bin}/yamlfmt -help"
  end
end
