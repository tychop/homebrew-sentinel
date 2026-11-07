cask "sentinel-app" do
  version "4.2.1"
  sha256 "ebf3f068309e4967a11f196c60c983532fcb5eceacdd251f213ae0d15a0b9ea5"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.1/Sentinel-v4.2.1.dmg"
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
