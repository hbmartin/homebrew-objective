class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform"

  url "https://repo1.maven.org/maven2/me/haroldmartin/objective-cli/0.3.0/objective-cli-0.3.0.jar"
  sha256 "44707ee7389e7144f9d79436b3ca61da4872550c4b51b4843441a45df8b0574d"

  license "Apache-2.0"
  depends_on "openjdk"
  
  def install
    libexec.install "objective-cli-0.3.0.jar"
    bin.write_jar_script libexec/"objective-cli-0.3.0.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end