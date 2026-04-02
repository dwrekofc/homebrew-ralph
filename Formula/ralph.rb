class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.5.0-beta.tar.gz"
  sha256 "ddde3c0bfe99e9ef4617785f8f5ff33c938ff0a6785b157c765739687ae7df33"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
