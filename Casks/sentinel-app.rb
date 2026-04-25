cask "sentinel-app" do
  version "4.0.4"
  sha256 "8e91225e1c59ee7b40044bb789379decf90da7828a0e2a8d4809293113ff38bc"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.0.4/Sentinel-v4.0.4.dmg"
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
