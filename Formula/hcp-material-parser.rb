class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.7", revision: "9673b20e6a5abfba86cb98e0f6095d64542622a5"
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
