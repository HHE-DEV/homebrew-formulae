class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.9", revision: "576365b341be2a8ddb093e3ac00036cb2b14a92d"
  head "https://github.com/HHE-DEV/hcp-material-parser.git"
  license "MIT"

  depends_on xcode: ["10.15", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
    (bash_completion/"hcp-material").write `#{bin}/hcp-material --generate-completion-script bash`
    (fish_completion/"hcp-material.fish").write `#{bin}/hcp-material --generate-completion-script fish`
    (zsh_completion/"_hcp-material").write `#{bin}/hcp-material --generate-completion-script zsh`
  end

  test do
    system "#{bin}/hcp-material-parser --version"
  end
end
