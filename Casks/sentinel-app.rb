cask "sentinel-app" do
  version "4.2.2"
  sha256 "ed60387fa228595b098de406e7db6d8a24c074a47af98a79188b416ff43d1a26"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.2/Sentinel-v4.2.2.dmg"
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
