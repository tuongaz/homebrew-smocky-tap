# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.38/smocky_v0.0.38_darwin_arm64.tar.gz"
      sha256 "ef63169da41bbdacb0974552701a20fd7ecda8e85e37a62e3e97526343b10bdb"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.38/smocky_v0.0.38_darwin_amd64.tar.gz"
      sha256 "fd15ef4995c860d61375fc0c455e32ea9ca6f9d9ea72a0ee6f9b091968e0fa71"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.38/smocky_v0.0.38_linux_amd64.tar.gz"
      sha256 "1c1ae72a5f14a3a43f01969e09e79a020b32c10c40996c0e27900c05427c0de7"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.38/smocky_v0.0.38_linux_arm64.tar.gz"
      sha256 "e4cf8fa853f781d5b0f17456185e6caf55ca4da0c5d40b558fdd882f9d4cd9e4"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
