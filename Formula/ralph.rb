class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.5.5-beta.tar.gz"
  sha256 "a3698bc263a056e33dd4e390793d51c3a602baf3530d4f82db7649739160586f"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
