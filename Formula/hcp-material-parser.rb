class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.0", revision: "b91166064b0b6db931ac04c882604531be51e9bd"
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
