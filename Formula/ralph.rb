class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "3b606fb4c9d10da51f603be88d79b29f64fd2baf6a50a0e1e0febcfc7c7ccef3"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def post_install
    system bin/"ralph", "install-commands"
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
