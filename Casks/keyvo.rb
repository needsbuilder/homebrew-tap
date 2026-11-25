cask "keyvo" do
  version "0.2.15"
  sha256 "85988cd5aa7c4765646b668bcbb756faba4d4d59f9a2889fb3dd1a1c84170ab4"

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
