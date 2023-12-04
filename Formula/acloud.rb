# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Acloud < Formula
  desc ""
  homepage "https://avisi.nl/"
  version "0.19.0"

  depends_on "fzf" => :optional
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud/0.19.0/acloud_0.19.0_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "a19a63a248a3b949408a026dd53a9a923d87612cbbad3fd98d4abc54f004b4ea"

      def install
        bin.install "acloud"
        zsh_completion.install "completions/acloud.zsh" => "_acloud"
        bash_completion.install "completions/acloud.bash" => "acloud"
        fish_completion.install "completions/acloud.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud/0.19.0/acloud_0.19.0_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "9f222b7dff7d66b658dff30d8e770c7d8f37e5cbed1873e95e5b62d0890f9506"

      def install
        bin.install "acloud"
        zsh_completion.install "completions/acloud.zsh" => "_acloud"
        bash_completion.install "completions/acloud.bash" => "acloud"
        fish_completion.install "completions/acloud.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud/0.19.0/acloud_0.19.0_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "b2ded40af43663292dc940bf457b068980cc41efc38917d341af785e28a38087"

      def install
        bin.install "acloud"
        zsh_completion.install "completions/acloud.zsh" => "_acloud"
        bash_completion.install "completions/acloud.bash" => "acloud"
        fish_completion.install "completions/acloud.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud/0.19.0/acloud_0.19.0_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "0e6a55bdb6603fb860aaf6783e039fd9a1585c53fb0d84647cc7b79b86ae22ad"

      def install
        bin.install "acloud"
        zsh_completion.install "completions/acloud.zsh" => "_acloud"
        bash_completion.install "completions/acloud.bash" => "acloud"
        fish_completion.install "completions/acloud.fish"
      end
    end
  end

  test do
    system "#{bin}/acloud version"
  end
end
