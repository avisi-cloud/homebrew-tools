class StructurizrSiteGeneratr < Formula
  desc "Static site generator for architecture models created with Structrizr DSL"
  homepage "https://github.com/avisi-cloud/structurizr-site-generatr"
  url "https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.1.7/structurizr-site-generatr-1.1.7.tar.gz"
  sha256 "c260b89692d3c71e7640f1c2c999d1279bf030c185dab26ca8c528e5fde1271f"
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
