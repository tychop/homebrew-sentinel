cask "sentinel-app" do
  version "4.2.0"
  sha256 "9210f68550b7c715e8484d014e744ef62563147ab8cbd78b802879a6159db5d7"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.0/Sentinel-v4.2.0.dmg"
  name "Sentinel"
  desc "GitHub repository, workflow, and PR monitor for macOS"
  homepage "https://github.com/tychop/sentinel-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ":sequoia"

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Support/Sentinel",
    "~/Library/Caches/com.pandy.sentinel.app",
    "~/Library/Preferences/com.pandy.sentinel.app.plist",
    "~/Library/Saved Application State/com.pandy.sentinel.app.savedState",
  ]
end
