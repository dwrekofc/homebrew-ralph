class Ralph < Formula
  include Language::Python::Virtualenv

  desc "Bootstrap projects with the Ralph Playbook methodology"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "04ac702d559ca8b7ff7e914c13a186416a205c8a8b16b7d8bfb75740535a11cb"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph-init", shell_output("#{bin}/ralph-init --help")
  end
end
