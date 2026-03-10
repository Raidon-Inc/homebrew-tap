class P3 < Formula
  desc "TaskP3 CLI - manage tasks from the command line"
  homepage "https://www.taskp3.com/cli"
  url "https://registry.npmjs.org/@taskp3/cli/-/cli-0.2.1.tgz"
  sha256 "b260b312d48ddea9793e9609fd7b3d5afaf83ebf6f616ce942888d1005fdb52c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "TaskP3 CLI", shell_output("#{bin}/p3 --help")
  end
end
