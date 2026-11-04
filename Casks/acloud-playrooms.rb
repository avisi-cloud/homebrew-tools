cask "acloud-playrooms" do
  version "0.30.2"
  sha256 "12fcb1a38ecc1bb4f1dd5cacbe15b3768ba0fe78e6e9c98d73c36cf85582a188"

  url "https://github.com/avisi-cloud/acloud-playrooms/releases/download/v#{version}/acloud-playrooms_#{version}_darwin_universal.zip"
  name "Acloud Playrooms"
  desc "Desktop interface for Acloud AI development environments"
  homepage "https://github.com/avisi-cloud/acloud-playrooms"

  depends_on macos: :monterey
  depends_on cask: "avisi-cloud/tools/acloud"

  app "Acloud Playrooms.app"

  # This app is ad-hoc signed, but not Apple-notarized.
  # Remove quarantine only from this installed app, as in acloud-toolkit.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Acloud Playrooms.app"]
  end

  caveats <<~EOS
    This app is in alpha: things may change or break between versions.
    Report problems or ideas at https://github.com/avisi-cloud/acloud-playrooms/issues

    Requires an Acloud account. Homebrew installed the acloud CLI with this app.
    Sign in with: acloud auth login
  EOS
end
