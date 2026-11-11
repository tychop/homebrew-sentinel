cask "sentinel-app" do
  version "4.2.6"
  sha256 "26ca26ba37504a3b6e9dbcd245a5095525758d38ced0dba1201deb43a23b9707"

  url "https://github.com/tychop/sentinel-releases/releases/download/v4.2.6/Sentinel-v4.2.6.dmg"
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
