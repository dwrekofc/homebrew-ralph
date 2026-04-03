class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.5.0-beta.tar.gz"
  sha256 "179f7508a6b0907e4a2bc1f22055925f3ce76d6e2038d417b9d6e761361e38c9"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
