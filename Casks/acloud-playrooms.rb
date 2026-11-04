cask "acloud-playrooms" do
  version "0.30.1"
  sha256 "77ad75b26b7440174a0ae481d550a5fdef09e7e8086f2de88ecab1b51b002283"

  url "https://github.com/avisi-cloud/acloud-playrooms/releases/download/v#{version}/acloud-playrooms_#{version}_darwin_universal.zip"
  name "Acloud Playrooms"
  desc "Desktop interface for Acloud AI development environments"
  homepage "https://github.com/avisi-cloud/acloud-playrooms"

  depends_on macos: ">= :monterey"
  depends_on cask: "avisi-cloud/tools/acloud"

  app "Acloud Playrooms.app"

  # This app is ad-hoc signed, but not Apple-notarized.
  # Remove quarantine only from this installed app, as in acloud-toolkit.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Acloud Playrooms.app"]
  end

  caveats <<~EOS
    This app is in alpha: things may change or break between versions.
    Report problems or ideas at https://github.com/avisi-cloud/acloud-playrooms/issues

    Requires an Acloud account. Homebrew installed the acloud CLI with this app.
    Sign in with: acloud auth login
  EOS
end
