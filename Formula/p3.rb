class P3 < Formula
  desc "TaskP3 CLI - manage tasks from the command line"
  homepage "https://www.taskp3.com/cli"
  url "https://registry.npmjs.org/@taskp3/cli/-/cli-1.0.0.tgz"
  sha256 "f5a59f5dc8c59d7ecd2b79b1fdb1a5d54cab52babce38d97b32eab1fb7421025"
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
