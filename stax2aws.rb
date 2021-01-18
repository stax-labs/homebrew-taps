require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.2.0'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_macOS_amd64.tar.gz"
    sha256 'db85f1eaacea6afa03a3383b0eaa4ad7a6133762e178214a415e48e68661700e'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 'bd38c73bfe618be9351e72d9a003a2302956c689645239f8b2f10fcb8a35c784'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
