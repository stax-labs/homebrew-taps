# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stax2aws < Formula
  desc "Official CLI for logging into Stax-managed AWS accounts."
  homepage "https://github.com/stax-labs/stax2aws-releases"
  version "1.4.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/stax-labs/stax2aws-releases/releases/download/v1.4.0/stax2aws_1.4.0_macOS_arm64.tar.gz"
      sha256 "dfb2cefab9599076534796ad8cf7809ebe11f831e8c857d1cf58ed89082d2cf8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/stax-labs/stax2aws-releases/releases/download/v1.4.0/stax2aws_1.4.0_macOS_amd64.tar.gz"
      sha256 "3408dc2bed8f2d13d09388da505909f6da026187c1bf50529340e9d974f5e38d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/stax-labs/stax2aws-releases/releases/download/v1.4.0/stax2aws_1.4.0_linux_amd64.tar.gz"
      sha256 "66e48eafbd1c2be1bc71b162e8983f3bbe370061f65998a780cffc4d89effa4b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/stax-labs/stax2aws-releases/releases/download/v1.4.0/stax2aws_1.4.0_linux_arm64.tar.gz"
      sha256 "5a03abbeae162db414017cfe3e388d28c941fd55b16df4dfcd3b5cac995f1a99"
    end
  end

  def install
    bin.install 'stax2aws'

    output = Utils.popen_read("#{bin}/stax2aws completion bash")
    (bash_completion/"stax2aws").write output

    output = Utils.popen_read("#{bin}/stax2aws completion zsh")
    (zsh_completion/"_stax2aws").write output

    prefix.install_metafiles
  end

  test do
    system "#{bin}/stax2aws --version"
  end
end
