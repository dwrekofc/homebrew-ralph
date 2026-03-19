class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "c94fbf069a8f56a291092da98fc658c724b0a53ea80d550fffdf4b8c1229c520"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
