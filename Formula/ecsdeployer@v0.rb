# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class EcsdeployerATv0 < Formula
  desc "Easily deploy containerized applications to AWS ECS Fargate"
  homepage "https://ecsdeployer.com"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ecsdeployer/ecsdeployer/releases/download/v0.0.1/ecsdeployer_darwin_arm64.tar.gz"
      sha256 "3bef9582f2f8bd9f5ac90cad86bede59dee01c842858a64b1ba46b6b86921c9e"

      def install
        bin.install "ecsdeployer"
        bash_completion.install "completions/ecsdeployer.bash" => "ecsdeployer"
        fish_completion.install "completions/ecsdeployer.fish" => "ecsdeployer.fish"
        zsh_completion.install "completions/ecsdeployer.zsh" => "_ecsdeployer"
        man1.install "manpages/ecsdeployer.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ecsdeployer/ecsdeployer/releases/download/v0.0.1/ecsdeployer_darwin_x86_64.tar.gz"
      sha256 "69c9b51af03cfc2ff7aef71b04db3fcce2ff3e76ce934f8d06fda9c5a764619c"

      def install
        bin.install "ecsdeployer"
        bash_completion.install "completions/ecsdeployer.bash" => "ecsdeployer"
        fish_completion.install "completions/ecsdeployer.fish" => "ecsdeployer.fish"
        zsh_completion.install "completions/ecsdeployer.zsh" => "_ecsdeployer"
        man1.install "manpages/ecsdeployer.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ecsdeployer/ecsdeployer/releases/download/v0.0.1/ecsdeployer_linux_x86_64.tar.gz"
      sha256 "261d86146b3f3019b1fe9ee78ef1a1b96a66a92e01c4d27fb7583eed5a5d1fb4"

      def install
        bin.install "ecsdeployer"
        bash_completion.install "completions/ecsdeployer.bash" => "ecsdeployer"
        fish_completion.install "completions/ecsdeployer.fish" => "ecsdeployer.fish"
        zsh_completion.install "completions/ecsdeployer.zsh" => "_ecsdeployer"
        man1.install "manpages/ecsdeployer.1.gz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ecsdeployer/ecsdeployer/releases/download/v0.0.1/ecsdeployer_linux_arm64.tar.gz"
      sha256 "1c240b25e94c0e89b895b792af2601a2ae270cf2af38ff0fc5ac73478d18fbfb"

      def install
        bin.install "ecsdeployer"
        bash_completion.install "completions/ecsdeployer.bash" => "ecsdeployer"
        fish_completion.install "completions/ecsdeployer.fish" => "ecsdeployer.fish"
        zsh_completion.install "completions/ecsdeployer.zsh" => "_ecsdeployer"
        man1.install "manpages/ecsdeployer.1.gz"
      end
    end
  end

  test do
    system "#{bin} --version"
  end
end
