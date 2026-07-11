class P3 < Formula
  desc "TaskP3 CLI - manage tasks from the command line"
  homepage "https://www.taskp3.com/cli"
  url "https://registry.npmjs.org/@taskp3/cli/-/cli-0.3.0.tgz"
  sha256 "5c024d6705797dadc3b6103d2a7dea5e03712e284aa2e637cca0f98311374be5"
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
