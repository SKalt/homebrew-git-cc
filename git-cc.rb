# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitCc < Formula
  desc "A git extension to help write conventional commits."
  homepage "https://github.com/skalt/git-cc"
  version "0.0.15"
  license "Indie Code Catalog Standard Deal >= 4.1"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/SKalt/git-cc/releases/download/v0.0.15/git-cc_0.0.15_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "0526f93558003284101264be10dc5102bf9d52bb65e3dabddafc01a4d03fedcf"

      def install
        bin.install "git-cc"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/SKalt/git-cc/releases/download/v0.0.15/git-cc_0.0.15_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "9ccf602c0b4e8795446114952025c2d8ec6b21f78f344a75143944d583fd1a8f"

      def install
        bin.install "git-cc"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/SKalt/git-cc/releases/download/v0.0.15/git-cc_0.0.15_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b72e869716240e362aec7376a90dfcb6cd8b9abb950f0b0ec6157372a9fa93a2"

      def install
        bin.install "git-cc"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/SKalt/git-cc/releases/download/v0.0.15/git-cc_0.0.15_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "87a3082227c6139e2369d0d5796b1eb2c03371b9f243689889840d4c0c34a948"

      def install
        bin.install "git-cc"
      end
    end
  end

  test do
    system "#{bin}/git-cc --version"
  end
end
