cask "sentinel-app" do
  version "4.1.1"
  sha256 "2063c43d0e6fc94afc5249d8351a1ea63f86512f8c7cc5f55897ef196f8fe9d7"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.1.1/Sentinel-v4.1.1.dmg"
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
