class StructurizrSiteGeneratr < Formula
  desc "Static site generator for architecture models created with Structrizr DSL"
  homepage "https://github.com/avisi-cloud/structurizr-site-generatr"
  url "https://github.com/avisi-cloud/structurizr-site-generatr/releases/download/1.0.3/structurizr-site-generatr-1.0.3.tar"
  sha256 "bbe25dc7f34eda2b07f674c74c794d1de2d9a99acfa520bad28b1fe76fabe0b5"
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
