class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.1", revision: "09c3081d373daa385d28922efe651ddc5ebf6588"
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
