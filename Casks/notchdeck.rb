cask "notchdeck" do
  version "1.25.0"
  sha256 "a4979be032160dc4af45d07094f8ddb01a6d45a55c41f745370b1d04f05ede97"

  url "https://github.com/Mr-Who-Root/notchdeck/releases/download/v#{version}/NotchDeck-#{version}.dmg"
  name "NotchDeck"
  desc "AI usage rings, media controls, clipboard history and more in the notch"
  homepage "https://mr-who-root.github.io/notchdeck/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Sparkle updates it in place; Homebrew only has to know that.
  auto_updates true
  depends_on macos: :sequoia

  app "NotchDeck.app"

  uninstall quit: "com.notchdeck.app"

  zap trash: [
    "~/Library/Application Support/NotchDeck",
    "~/Library/Caches/com.notchdeck.app",
    "~/Library/HTTPStorages/com.notchdeck.app",
    "~/Library/Preferences/com.notchdeck.app.plist",
  ]

  caveats <<~EOS
    NotchDeck is not notarized by Apple yet. If macOS says it cannot verify
    the app on first launch, open System Settings > Privacy & Security and
    click "Open Anyway" next to NotchDeck.
  EOS
end
