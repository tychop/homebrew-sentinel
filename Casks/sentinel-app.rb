cask "sentinel-app" do
  version "4.0.5"
  sha256 "3b8a80717173792de29b36e37273cd187724c755824c7aea6cb7a4f722410e54"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.0.5/Sentinel-v4.0.5.dmg"
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
