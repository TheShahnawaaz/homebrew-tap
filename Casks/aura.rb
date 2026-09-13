cask "aura" do
  version "1.0.0"
  sha256 "a7096f211462a594093223fee5301df9d73f63c0d7d258ef918bfa769838ae4c"

  url "https://github.com/TheShahnawaaz/Aura/releases/download/v#{version}/Aura.dmg"
  name "Aura"
  desc "Autonomous voice and desktop AI assistant for macOS with fluid camera notch HUD"
  homepage "https://github.com/TheShahnawaaz/Aura"

  depends_on macos: ">= :sonoma"

  app "Aura.app"

  zap trash: [
    "~/Library/Application Support/Aura",
    "~/Library/Caches/com.aura.mac",
    "~/Library/Preferences/com.aura.mac.plist",
  ]
end
