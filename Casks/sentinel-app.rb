cask "sentinel-app" do
  version "4.2.5"
  sha256 "c7dec8f94e370811aa57367af0b1e6b1053712f1ea3179706031c0ea794126cf"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.5/Sentinel-v4.2.5.dmg"
  name "Sentinel"
  desc "GitHub repository, workflow, and PR monitor for macOS"
  homepage "https://github.com/tychop/sentinel-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Support/Sentinel",
    "~/Library/Caches/com.pandy.sentinel.app",
    "~/Library/Preferences/com.pandy.sentinel.app.plist",
    "~/Library/Saved Application State/com.pandy.sentinel.app.savedState",
  ]
end
