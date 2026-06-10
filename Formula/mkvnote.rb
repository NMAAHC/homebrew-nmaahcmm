class Mkvnote < Formula
  desc "NMAAHC Matroska metadata editor"
  homepage "https://github.com/NMAAHC/mkvnote"
  url "https://github.com/NMAAHC/mkvnote/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "df01b29348bb5b42c49dc55fea057b6f154480e57bc88b1b50b68789e7b5e281"
  head "https://github.com/NMAAHC/mkvnote.git", branch: "main"

  depends_on "cmake"  => :build
  depends_on "csvprintf"
  depends_on "mkvtoolnix"
  depends_on "mediainfo"
  depends_on "qt"
  depends_on "xmlstarlet"
  

  def install
    qt_prefix = Formula["qt"].opt_prefix
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_PREFIX_PATH=#{qt_prefix}", "-DCMAKE_OSX_ARCHITECTURES=arm64", *std_cmake_args
    system "cmake", "--build", "build", "--config", "Release"
    bin.install "build/mkvnote-gui"
    bin.install "mkvnote"
  end
end