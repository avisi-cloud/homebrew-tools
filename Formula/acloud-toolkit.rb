# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AcloudToolkit < Formula
  desc ""
  homepage "https://docs.avisi.cloud/"
  version "1.6.4"

  depends_on "fzf" => :optional
  depends_on "zsh" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud-toolkit/1.6.4/acloud-toolkit_1.6.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "a0085f5df8d3101fa8ac932fb453b90c8e711a37cf8718251d385d4dc77a8b91"

      def install
        bin.install "acloud-toolkit"
        zsh_completion.install "completions/acloud-toolkit.zsh" => "_acloud-toolkit"
        bash_completion.install "completions/acloud-toolkit.bash" => "acloud-toolkit"
        fish_completion.install "completions/acloud-toolkit.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud-toolkit/1.6.4/acloud-toolkit_1.6.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "09d1f4bd18a2bc55adf9cac49e443a2ed28e612a048256eb0cb504b0e60fbacf"

      def install
        bin.install "acloud-toolkit"
        zsh_completion.install "completions/acloud-toolkit.zsh" => "_acloud-toolkit"
        bash_completion.install "completions/acloud-toolkit.bash" => "acloud-toolkit"
        fish_completion.install "completions/acloud-toolkit.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud-toolkit/1.6.4/acloud-toolkit_1.6.4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "8655b295cfa5c58f3aadfb3f860b6a4a967077c6b514282be11bfcac2d5e6b3c"

      def install
        bin.install "acloud-toolkit"
        zsh_completion.install "completions/acloud-toolkit.zsh" => "_acloud-toolkit"
        bash_completion.install "completions/acloud-toolkit.bash" => "acloud-toolkit"
        fish_completion.install "completions/acloud-toolkit.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://avisi-cloud-brew-tap-public.s3.eu-west-1.amazonaws.com/releases/acloud-toolkit/1.6.4/acloud-toolkit_1.6.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ca8490e01aba6b84dd628fc923d4bbf9ef6ec2ae610be30b62e9876ad7846845"

      def install
        bin.install "acloud-toolkit"
        zsh_completion.install "completions/acloud-toolkit.zsh" => "_acloud-toolkit"
        bash_completion.install "completions/acloud-toolkit.bash" => "acloud-toolkit"
        fish_completion.install "completions/acloud-toolkit.fish"
      end
    end
  end

  test do
    system "#{bin}/acloud-toolkit version"
  end
end
