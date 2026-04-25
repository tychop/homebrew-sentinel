cask "sentinel-app" do
  version "4.0.6"
  sha256 "96bc52d6c19d22ecf34a9aa3cc0e486abc7fd55201c42d58c851bf711bbecbe8"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.0.6/Sentinel-v4.0.6.dmg"
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
