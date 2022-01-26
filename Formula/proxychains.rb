# Unofficial brew formula for proxychains 4
# Instruction:
#   $ git clone git://gist.github.com/3792521.git gist-3792521
#   $ brew install --HEAD gist-3792521/proxychains4_formula.rb
#
# The default config file will be located in /usr/local/etc/proxychains.conf
#
class Proxychains < Formula
  head "https://github.com/haad/proxychains.git"
  homepage "https://github.com/haad/proxychains"
  
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
    system "make install-config"
  end
end
