class HcpMaterialParser < Formula
  desc "A command line utility to parse & update material pricing"
  homepage "https://github.com/HHE-DEV/hcp-material-parser"
  url "https://github.com/HHE-DEV/hcp-material-parser.git", tag: "0.1.9", revision: "576365b341be2a8ddb093e3ac00036cb2b14a92d"
  head "https://github.com/HHE-DEV/hcp-material-parser.git"
  license "MIT"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, big_sur: "a32f5e07731166662cfc14cab312b9650234d9bc9431913e0d7dd382a400dacd"
  end

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
