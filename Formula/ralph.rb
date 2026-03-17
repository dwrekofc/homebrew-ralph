class Ralph < Formula
  include Language::Python::Virtualenv

  desc "Bootstrap projects with the Ralph Playbook methodology"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "91fc3ff1c9d100bc62bbf5465f1f700023a3665049c6db7e61f9344613bb7489"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph-init", shell_output("#{bin}/ralph-init --help")
  end
end
