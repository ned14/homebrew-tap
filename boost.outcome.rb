class BoostOutcome < Formula
  desc "A very lightweight monadic outcome<T>, result<T> and option<T> suitable for low latency and exceptions disable usage."
  homepage "https://ned14.github.io/boost.outcome/"
  head "https://github.com/ned14/boost.outcome.git"

  depends_on "cmake" => :build
  
  def install
    mkdir "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    system "make"
    system "ctest", "-E", "noexcept"
  end
end
