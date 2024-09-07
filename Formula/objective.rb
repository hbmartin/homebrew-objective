class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform"

  url "https://repo1.maven.org/maven2/me/haroldmartin/cli/0.3.2/cli-0.3.2.jar"
  sha256 "5857f9737f1f3f7c43cf8b334a6743bbd7a5f659cffaf22001155510bf60419e"

  license "Apache-2.0"
  depends_on "openjdk"
  
  def install
    libexec.install "cli-0.3.2.jar"
    bin.write_jar_script libexec/"cli-0.3.2.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end