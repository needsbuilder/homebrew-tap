cask "keyvo" do
  version "0.2.14"
  sha256 "006825188edb19274bc794d839e38e9a4d712b50fab82f88084018c0a30d76e0"

  url "https://keyvo.needslab.ai/download/Keyvo-#{version}.dmg"
  name "Keyvo"
  desc "AI voice keyboard and dictation app for Mac"
  homepage "https://keyvo.needslab.ai/en/"

  livecheck do
    url "https://keyvo.needslab.ai/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Keyvo.app"

  zap trash: [
    "~/Library/Application Support/Keyvo",
    "~/Library/Preferences/com.needslab.keyvo.mac.plist",
  ]
end
