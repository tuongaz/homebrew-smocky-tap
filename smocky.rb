# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Smocky < Formula
  desc "Smocky is a mocking tool"
  homepage "https://github.com/tuongaz/smocky"
  version "0.0.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.55/smocky_v0.0.55_darwin_arm64.tar.gz"
      sha256 "65f2ef95357bfe10882450738836c1b275babc4a89461d6eca5936a58d7c25ac"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.55/smocky_v0.0.55_darwin_amd64.tar.gz"
      sha256 "75ee6651393cbe7bdb6990b6f2a768755bb4f17a7ff32ce0cba75f7091d8d68f"

      def install
        bin.install "smocky"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.55/smocky_v0.0.55_linux_arm64.tar.gz"
      sha256 "f11a006bb457aaa13db9afa3f62df2b1e813ba29e697697d3387f5cbeb982e58"

      def install
        bin.install "smocky"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tuongaz/smocky/releases/download/v0.0.55/smocky_v0.0.55_linux_amd64.tar.gz"
      sha256 "bcd4afa661dac10ce7da158e8b0e0b502c690c24a0e9083a04843115a122acc7"

      def install
        bin.install "smocky"
      end
    end
  end

  test do
    system "#{bin}/smocky --version"
  end
end
