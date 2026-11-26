cask "keyvo" do
  version "0.2.16"
  sha256 "8f882cc15baa658b95a80e7044490b7c014cac1a5d2cec94f21823edfc521bc4"

  url "https://keyvo.needslab.ai/download/Keyvo-#{version}.dmg"
  name "Keyvo"
  desc "AI voice keyboard and dictation app for Mac"
  homepage "https://keyvo.needslab.ai/en/"

  livecheck do
    url "https://keyvo.needslab.ai/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Keyvo.app"

  zap trash: [
    "~/Library/Application Support/Keyvo",
    "~/Library/Preferences/com.needslab.keyvo.mac.plist",
  ]
end
