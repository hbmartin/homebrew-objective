class Objective < Formula
  desc "Objective object and index access via CLI / TUI"
  homepage "https://github.com/hbmartin/objective-sdk-kotlin-multiplatform"

  url "file:/Users/runner/work/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/build/publish/staging/d31bc557-6d32-4c4e-ba03-23c3a8e7aa20/me/haroldmartin/objective-cli/0.1.7/objective-cli-0.1.7.jar"
  sha256 "f79455b1000366cd0f3306bd6edaa7a6d2354d9f6837d505fd87abf2f1cc8487"

  license "Apache-2.0"
  depends_on "openjdk"
  
  def install
    libexec.install "objective-cli-0.1.7.jar"
    bin.write_jar_script libexec/"objective-cli-0.1.7.jar", "objective"
  end

  test do
    assert_match "Usage: objective [-k OBJECTIVE_KEY] [COMMAND]", shell_output("#{bin}/objective -h")
  end
end