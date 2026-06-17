cask "sentinel-app" do
  version "4.1.0"
  sha256 "f47fc8169a518c8209c99eeec16a304e883f5ea3b9c34f1b195393fb1b67add7"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.1.0/Sentinel-v4.1.0.dmg"
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
