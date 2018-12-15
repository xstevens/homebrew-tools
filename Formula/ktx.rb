class Ktx < Formula
    desc "Tool for managing Kubernetes cluster configs"
    homepage "https://github.com/heptiolabs/ktx"
    url "https://github.com/heptiolabs/ktx/archive/master.zip"
    version "master"
    sha256 "e2c66be9566af82bd7eb3ef8824048c3d14c35d5dc79fb7ed8f3f5ae3d0f4db6"
    head "https://github.com/heptiolabs/ktx.git"

    bottle :unneeded

    depends_on "bash-completion" => :recommended

    def install
        share.install "ktx"
        bash_completion.install "ktx-completion.sh"
        doc.install "README.md"        
    end

    def caveats; <<~EOS
        You should add the following to your .bashrc (or .bash_profile):
        if [ -f #{HOMEBREW_PREFIX}/share/ktx ]; then
            source #{HOMEBREW_PREFIX}/share/ktx
        fi
    EOS
    end

    test do
        system "test", "-f", "#{HOMEBREW_PREFIX}/share/ktx"
    end
end
