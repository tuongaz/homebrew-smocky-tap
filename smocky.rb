# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.56/smocky_v0.0.56_darwin_arm64.tar.gz"
      sha256 "b3f8496bdce9b68e4e7779cff6b60675994863dd0ed0fe7da089baf0156ad372"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.56/smocky_v0.0.56_darwin_amd64.tar.gz"
      sha256 "a5ba9cb4aea3b9b8648fabff8d6900dd18e1087882d6f11ccc1e456971866b55"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.56/smocky_v0.0.56_linux_arm64.tar.gz"
      sha256 "3c66ea5e387018aa8be457ea150d9e25b649e02fc1f5002b249bbc8946fd85e4"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.56/smocky_v0.0.56_linux_amd64.tar.gz"
      sha256 "03e71cd840e74eaa8cc3015273f34f898c80d4fe1a49682e040e147bdda991b2"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
