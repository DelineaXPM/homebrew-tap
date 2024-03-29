# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsvCli < Formula
  desc "⚡ A cross-platform swiss army knife tool for DevOps secrets management from Delinea."
  homepage "https://github.com/DelineaXPM/dsv-cli"
  version "1.40.6"
  license "Apache-2.0 license"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DelineaXPM/dsv-cli/releases/download/v1.40.6/dsv-darwin-x64", using: CurlDownloadStrategy
      sha256 "17f4a39d37e1d12926a6b5f6df17a43c3671ea20927eda3fb3fd59876c478781"

      def install
        bin.install "dsv-darwin-x64" => "dsv"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DelineaXPM/dsv-cli/releases/download/v1.40.6/dsv-darwin-arm64", using: CurlDownloadStrategy
      sha256 "344c56a48a63b152db836c8ee3a14fca0e1feffb1c9f4110a092b5773dc95d76"

      def install
        bin.install "dsv-darwin-arm64" => "dsv"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DelineaXPM/dsv-cli/releases/download/v1.40.6/dsv-linux-x64", using: CurlDownloadStrategy
      sha256 "ffa46ed8c2d359a9c6135f486b222d32cc6b202f885e7040e3152b11f2e466e1"

      def install
        bin.install "dsv-linux-x64" => "dsv"
      end
    end
  end

  test do
    assert_equal "1.40.6", shell_output("#{bin}/dsv --version").strip
  end
end
