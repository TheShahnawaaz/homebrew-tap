cask "aura" do
  version :latest
  sha256 :no_check

  url "https://github.com/TheShahnawaaz/Aura/releases/latest/download/Aura.dmg"
  name "Aura"
  desc "Autonomous voice and desktop AI assistant for macOS with fluid camera notch HUD"
  homepage "https://github.com/TheShahnawaaz/Aura"

  depends_on macos: :sonoma

  app "Aura.app"

  zap trash: [
    "~/Library/Application Support/Aura",
    "~/Library/Caches/com.aura.mac",
    "~/Library/Preferences/com.aura.mac.plist",
  ]
end
