require 'formula'

class Stax2aws < Formula
  homepage 'https://github.com/stax-labs/stax2aws-releases'
  version '1.3.0'
  if OS.mac?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_macOS_amd64.tar.gz"
    sha256 'fc540f888bc12b9f3731acdd9084cbd5f72e80303f758a0b72b8c1aa6a35b497'
  elsif OS.linux?
    url "https://github.com/stax-labs/stax2aws-releases/releases/download/v#{version}/stax2aws_#{version}_linux_amd64.tar.gz"
    sha256 '814cb0587b09ce8d44cbf69cee1c44cdcf26aeac0294bc490d9222ec3e224745'
  end

  depends_on :arch => :x86_64

  def install
    bin.install 'stax2aws'
  end

  test do
    system "#{bin}/stax2aws"
  end
end
