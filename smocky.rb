# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.57/smocky_v0.0.57_darwin_arm64.tar.gz"
      sha256 "6ab1ca3b50a5c89043e95ee56da285ac7ae2e6423411a9864f5b106f0529a8d0"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.57/smocky_v0.0.57_darwin_amd64.tar.gz"
      sha256 "1881cb1f68f8f9ba1df29c309251da37e9610cdf4eb95c3375b01b25d0dafec9"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.57/smocky_v0.0.57_linux_arm64.tar.gz"
      sha256 "5c0843cdc9be8e259c4cce4710d671f4e5df94914a644acbc434c9ff87044c02"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.57/smocky_v0.0.57_linux_amd64.tar.gz"
      sha256 "882dd5d08a8452be483e30f4609975c7f90800e1fb9c7114406b8bce89a181ea"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
