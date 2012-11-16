require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Scipy < Formula
  homepage 'http://www.scipy.org/'
  url 'http://pypi.python.org/packages/source/s/scipy/scipy-0.11.0.tar.gz'
  sha1 'e8dc162cf3acf8aa4fe7aeafc0ce53cc9d0f51ed'

  depends_on 'swig' => :build
  depends_on 'suite-sparse'
  depends_on 'numpy'

  def install
    ENV.fortran
    system "python", "setup.py", "install"
  end

  def test
    system "python", "-c", "'import scipy; scipy.test()'"
  end
end
