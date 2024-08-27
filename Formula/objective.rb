class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform"

  url "file:/Users/runner/work/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/build/publish/staging/f6bb8d2d-7962-4fca-b340-711b44accf93/me/haroldmartin/objective-cli/0.1.6/objective-cli-0.1.6.jar"
  sha256 "c834a04c37c9cb687950848fc0bbaffa3c0acbde949b7dedbb9a80fc6013b67c"

  license "Apache-2.0"
  depends_on "openjdk"
  
  def install
    libexec.install "objective-cli-0.1.6.jar"
    bin.write_jar_script libexec/"objective-cli-0.1.6.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end