class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform/"

  url "https://repo1.maven.org/maven2/me/haroldmartin/objective-cli/0.1.3/objective-cli-0.1.3.jar"
  sha256 "bb6a87f8400b44d640af1b8eaf6226a58eda6ce4685a3e1ac9ff22f4e038f266"

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

