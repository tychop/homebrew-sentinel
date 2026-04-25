cask "sentinel-app" do
  version "4.0.7"
  sha256 "aa661665e0c6d438f5dc72299b77c9afc595b45c7f704f3e49a3e5c69e6aed3c"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.0.7/Sentinel-v4.0.7.dmg"
  name "Sentinel"
  desc "GitHub repository, workflow, and PR monitor for macOS"
  homepage "https://github.com/tychop/sentinel-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Sentinel.app"

  zap trash: [
    "~/Library/Application Support/Sentinel",
    "~/Library/Caches/com.pandy.sentinel.app",
    "~/Library/Preferences/com.pandy.sentinel.app.plist",
    "~/Library/Saved Application State/com.pandy.sentinel.app.savedState",
  ]
end
