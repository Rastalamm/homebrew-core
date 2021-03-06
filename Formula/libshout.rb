class Libshout < Formula
  desc "Data and connectivity library for the icecast server"
  homepage "http://www.icecast.org/"
  url "https://downloads.xiph.org/releases/libshout/libshout-2.3.1.tar.gz"
  sha256 "cf3c5f6b4a5e3fcfbe09fb7024aa88ad4099a9945f7cb037ec06bcee7a23926e"

  bottle do
    cellar :any
    rebuild 1
    sha256 "7a5ffe25d08d99fd240d1cde8a664d85d7bf16872b4d7082a4fdb47cc698bb2f" => :high_sierra
    sha256 "a0b6a84beac7d8285e5388e3eec38578c49616573348549d48157ebe9a3f8771" => :sierra
    sha256 "d698606ddbd579700df1525f9fd7987b0aa6c9e8228e2a9a7346e606bee68f6e" => :el_capitan
    sha256 "12a8329306b2794cd473988bea8a6e18835f2985ede2716e561a1bae6fcd09cc" => :yosemite
    sha256 "6dc1b7d3505a42146d57a5f99901d4d3d35127efcad7babcf6b3c0c969864e5d" => :mavericks
    sha256 "28d6f61a37f5060a397bbfb1f83ca8bde79f3ffa351819a4a77502695d2fb31f" => :mountain_lion
  end

  depends_on "pkg-config" => :build
  depends_on "libogg"
  depends_on "libvorbis"
  depends_on "theora"
  depends_on "speex"

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make", "install"
  end
end
