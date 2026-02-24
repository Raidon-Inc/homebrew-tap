class P3 < Formula
  desc "TaskP3 CLI - manage tasks from the command line"
  homepage "https://www.taskp3.com/cli"
  url "https://registry.npmjs.org/@taskp3/cli/-/cli-0.1.9.tgz"
  sha256 "006fa56fea332ed1fec3c183957ce070b6ce2221c5af2c5b6b7fecfbdac0442e"
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
