class StructurizrSiteGeneratr < Formula
  desc "Static site generator for architecture models created with Structrizr DSL"
  homepage "https://github.com/avisi-cloud/structurizr-site-generatr"
  url "https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.0.4/structurizr-site-generatr-1.0.4.tar.gz"
  sha256 "a217e6a26698bd4a558cccff5185558e577756ac6eabd7b5bbaf1d10ab64d278"
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
