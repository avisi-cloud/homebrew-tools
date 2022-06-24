class StructurizrSiteGeneratr < Formula
  desc "Static site generator for architecture models created with Structrizr DSL"
  homepage "https://github.com/avisi-cloud/structurizr-site-generatr"
  url "https://github.com/avisi-cloud/structurizr-site-generatr/archive/1.0.3.tar.gz"
  sha256 "36fb8258babaedd8e07ea62792b4ee353090e96ef72576d775f4d6ba7fb1db2d"
  license "Apache-2.0"

  depends_on "graphviz"
  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    (bin/"structurizr-site-generatr").write_env_script libexec/"bin/structurizr-site-generatr", Language::Java.overridable_java_home_env
  end

  test do
    result = pipe_output("#{bin}/structurizr-site-generatr version").strip
    assert_match "Structurizr Site Generatr v#{version}", result
  end
end
