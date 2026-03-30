class P3 < Formula
  desc "TaskP3 CLI - manage tasks from the command line"
  homepage "https://www.taskp3.com/cli"
  url "https://registry.npmjs.org/@taskp3/cli/-/cli-0.2.5.tgz"
  sha256 "68ce04303b10ea0139bbd98d43378bff7a7753e8c561658c11c6ef9397d814c8"
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
