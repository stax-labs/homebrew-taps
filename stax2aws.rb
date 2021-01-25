require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.2.1'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_macOS_amd64.tar.gz"
    sha256 '54a6393d9b82e9e680031191b00e64d4112ea81250e76c298ee4571786d00b40'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 '92bffef3eca6cc9f61c88bb270f6051607a5dfdbc9ad75379814f7035979e634'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
