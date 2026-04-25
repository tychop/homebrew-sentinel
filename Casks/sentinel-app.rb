cask "sentinel-app" do
  version "4.0.0"
  sha256 "357f779702f8aed65d01efac4c868990dbf5321ecc3b745e5c782d75a8101cc4"

  url "https://github.com/tychop/sentinel-releases/releases/download/v#{version}/Sentinel-66.dmg"
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
