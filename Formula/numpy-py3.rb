require 'formula'

class Numpy < Formula
  homepage 'http://numpy.scipy.org/'
  url 'http://pypi.python.org/packages/source/n/numpy/numpy-1.6.2.tar.gz'
  sha1 'c36c471f44cf914abdf37137d158bf3ffa460141'

  def installi
    ENV.python3
    ENV.fortran
    system "python3", "setup.py", "install"
  end

  def test
    system "python3", "-c", "'import numpy; numpy.test()'"
  end
end
