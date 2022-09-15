class StructurizrSiteGeneratr < Formula
  desc "Static site generator for architecture models created with Structrizr DSL"
  homepage "https://github.com/avisi-cloud/structurizr-site-generatr"
  url "https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.0.11/structurizr-site-generatr-1.0.11.tar.gz"
  sha256 "4c9c3d572e897b88ecb06227fa2afd49a65b877a3afd772f30e5aedc3a26c1f0"
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
