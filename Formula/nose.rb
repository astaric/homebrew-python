require 'formula'

class Nose < Formula
  homepage 'https://nose.readthedocs.org/en/latest/'
  url 'http://pypi.python.org/packages/source/n/nose/nose-1.2.1.tar.gz'
  sha1 '02cc3ffdd7a1ce92cbee388c4a9e939a79f66ba5'

  def install
    system "python", "setup.py", "install"
  end

  def test
    system "python", "-c", "'import nose'"
  end
end
