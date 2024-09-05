class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform"

  url "https://repo1.maven.org/maven2/me/haroldmartin/objective-cli/0.3.1/objective-cli-0.3.1.jar"
  sha256 "db59e1b00e3a59a78aed14d9db14d01250b520f0b8347bc1dde35f9af9c425a0"

  license "Apache-2.0"
  depends_on "openjdk"
  
  def install
    libexec.install "objective-cli-0.3.1.jar"
    bin.write_jar_script libexec/"objective-cli-0.3.1.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end