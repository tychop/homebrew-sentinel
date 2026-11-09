cask "sentinel-app" do
  version "4.2.3"
  sha256 "435eb33cabac7951bece867402aefc1c3f039af5f551a7d5ccbaf702c0088c4c"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.3/Sentinel-v4.2.3.dmg"
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
