class Ralph < Formula
  include Language::Python::Virtualenv

  desc "AI development framework scaffolding and management"
  homepage "https://github.com/dwrekofc/ralph-playbook"
  url "https://github.com/dwrekofc/ralph-playbook/archive/refs/tags/v0.6.1-beta.tar.gz"
  sha256 "d3f1d6ddb9068b528dacd09c06c61e9e64818cfd7cb9957d46343aaf36be2771"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ralph v", shell_output("#{bin}/ralph --help")
  end
end
