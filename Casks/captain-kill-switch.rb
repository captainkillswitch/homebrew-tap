cask "captain-kill-switch" do
  version "0.2.96"
  sha256 "293c52eeb3c493113ab86989625769b2d7427d910111eb3b1794d1ee5a8ddfbe"

  url "https://captainkillswitch.github.io/downloads/latest-macos.dmg"
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
