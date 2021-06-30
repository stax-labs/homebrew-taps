require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.3.1'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_macOS_amd64.tar.gz"
    sha256 '936bce40a77b698ae064b5ddaf2fe7bb3269ef016ef1ad814fb6e2eab79a350d'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 '514c55967de83c83af0257b65bd4c506a3097f38a8528b569afde7ffdf27fdcd'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
