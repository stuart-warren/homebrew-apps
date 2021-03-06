# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dotfiles < Formula
  desc "A tool help setup your dotfiles"
  homepage "https://github.com/stuart-warren/dotfiles"
  version "0.0.3"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/stuart-warren/dotfiles/releases/download/v0.0.3/dotfiles_0.0.3_Darwin_x86_64.tar.gz"
    sha256 "d4d2129ede875f96901aa5d7aae217de091ebf8a2d22332f4263d91e50df2b19"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/stuart-warren/dotfiles/releases/download/v0.0.3/dotfiles_0.0.3_Linux_x86_64.tar.gz"
    sha256 "080bd603955aed3385b84935769854305737446a9ee86d0290b1fe99f29801af"
  end

  depends_on "go"

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles -help"
  end
end
