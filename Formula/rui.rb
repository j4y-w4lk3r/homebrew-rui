class Rui < Formula
  desc "Terminal UI for managing home routers (Orange Livebox/Funbox today; Play/Fritz on the roadmap)"
  homepage "https://github.com/j4y-w4lk3r/rui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/j4y-w4lk3r/rui/releases/download/v0.1.0/rui_0.1.0_Darwin_arm64.tar.gz"
      sha256 "95dd7c4dba055e0dfa4f70bff5bed245193edcfa081a6d5008aa887f7e84e414"

      def install
        bin.install "rui"
      end
    end
    on_intel do
      url "https://github.com/j4y-w4lk3r/rui/releases/download/v0.1.0/rui_0.1.0_Darwin_x86_64.tar.gz"
      sha256 "ab88fb7f0dddb5ea937c38cfae137c1bb11e27ec05131482cef52f0b08bd5dd8"

      def install
        bin.install "rui"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/j4y-w4lk3r/rui/releases/download/v0.1.0/rui_0.1.0_Linux_arm64.tar.gz"
        sha256 "f452ce2a9e2b41dfde279daed5afa27255008aa8e21a7a16495daa04ea74351d"

        def install
          bin.install "rui"
        end
      end
    end
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/j4y-w4lk3r/rui/releases/download/v0.1.0/rui_0.1.0_Linux_x86_64.tar.gz"
        sha256 "7e84b12fdb6851736459b481d9debf9d3b5cbc458578a2a8c6fb97a04c362bdc"

        def install
          bin.install "rui"
        end
      end
    end
  end

  test do
    system "#{bin}/rui", "-version"
  end
end
