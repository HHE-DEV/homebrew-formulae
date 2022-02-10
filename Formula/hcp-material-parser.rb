class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.8", revision: "afab11cfbc142d4e22461842f17a48b18b809c76"
  head "https://github.com/HHE-DEV/hcp-material-parser.git"
  license "MIT"

  depends_on xcode: ["10.15", :build]

  def install
    system "make", "install", "prefix=#{prefix}"

  end

  test do
    system "#{bin}/hcp-material-parser --version"
  end
end
