cask "captain-kill-switch" do
  version "0.4.13"
  sha256 "49baf356abf8c3e7b51005e294ab3153e1374d4c9eef38a1c39d9c41e5b62b75"

  url "https://github.com/captainkillswitch/downloads/releases/download/v#{version}/captain-kill-switch-#{version}-macos.dmg",
      verified: "github.com/captainkillswitch/downloads/"
  name "Captain Kill Switch"
  desc "System-tray app that force-quits every running application"
  homepage "https://captainkillswitch.com"

  livecheck do
    url "https://captainkillswitch.github.io/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # The app updates itself via the built-in Tauri updater; the pinned sha256
  # only has to match the version current at install time.
  auto_updates true

  app "Captain Kill Switch.app"

  uninstall quit: "com.captainkillswitch.app"

  zap trash: [
    "~/Library/Application Support/com.captainkillswitch.app",
    "~/Library/Caches/com.captainkillswitch.app",
    "~/Library/LaunchAgents/com.captainkillswitch.app.plist",
    "~/Library/Logs/com.captainkillswitch.app",
    "~/Library/Preferences/com.captainkillswitch.app.plist",
  ]
end
