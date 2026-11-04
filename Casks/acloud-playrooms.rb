cask "acloud-playrooms" do
  version "0.30.0"
  sha256 "c0c0de653dbe8bafad4900d2dde0354ad5ea0be6b62bdbf51eeadd90bfa245ee"

  url "https://github.com/avisi-cloud/acloud-playrooms/releases/download/v#{version}/acloud-playrooms_#{version}_darwin_universal.zip"
  name "Acloud Playrooms"
  desc "Desktop interface for Acloud AI development environments"
  homepage "https://github.com/avisi-cloud/acloud-playrooms"

  depends_on macos: ">= :monterey"

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

    Requires the acloud CLI and an Acloud account.
    Install the CLI with: brew install --cask avisi-cloud/tools/acloud
    Then sign in with: acloud auth login
  EOS
end
