require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.2.2'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_macOS_amd64.tar.gz"
    sha256 '7a46d6bb68285d7ba44809bed9688d34b9a79e817f98df347ddfa64795b7ecc9'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 '3195c1d3b64081fcf1a6c8e826658e4342fac960bb04777d65d7f72fef5c37b0'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
