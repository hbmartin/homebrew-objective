class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform/"

  url "https://repo1.maven.org/maven2/me/haroldmartin/objective-cli/0.1.3/objective-cli-0.1.3.jar"
  sha256 "71c47f86c01a3869d808d7d8af8bc0dc4071cf911c14cf612c82c4020117391a"

  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install "objective-cli-#{version}.jar"
    bin.write_jar_script libexec/"objective-cli-#{version}.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end

