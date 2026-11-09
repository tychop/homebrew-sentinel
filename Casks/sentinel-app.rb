cask "sentinel-app" do
  version "4.2.4"
  sha256 "2c82ea9592a38992f45fbf07f0603a022931ac4836f07f54d03deaa53c9fbac8"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.4/Sentinel-v4.2.4.dmg"
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
