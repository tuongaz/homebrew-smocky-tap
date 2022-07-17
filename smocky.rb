# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.48"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.48/smocky_v0.0.48_darwin_amd64.tar.gz"
      sha256 "f0fefc44b829e61124939ba7b2942e9d109e9253e244474d3f46cd6d9021899f"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.48/smocky_v0.0.48_darwin_arm64.tar.gz"
      sha256 "3dcaedc9f0648a2dc584fead676a8c317d73576ac0c5c0f875ca569d96322f23"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.48/smocky_v0.0.48_linux_amd64.tar.gz"
      sha256 "3e00dfd6533bd4ee060047539a1351ae9002d4b63a983496e68c21f23cb8a1d3"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.48/smocky_v0.0.48_linux_arm64.tar.gz"
      sha256 "ec038aebc1a75ec30f5dbcc5ba9edb1417d6b4be73eb32640476445e74a8f999"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
